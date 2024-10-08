const express = require('express');
const http = require('http');
const mongoose = require('mongoose');
const dotenv = require('dotenv');
const { Server } = require('socket.io');
const connectDB = require('./config/db');
const wastageRoutes = require('./routes/wastageRoutes');
const cors = require('cors');
const Wastage = require('./models/Wastage');
const path = require('path');

dotenv.config();

const app = express();
connectDB();

const server = http.createServer(app);
const io = new Server(server, {
    cors: {
        origin: "*",
        methods: ["GET", "POST"]
    }
});

app.use(cors());
app.use(express.json());
app.use('/api/wastage', wastageRoutes);
app.use(express.static(path.join(__dirname, 'public')));

io.on('connection', (socket) => {
    console.log('New WebSocket connection');

    // Emit data to client when it connects
    const sendWastageData = async () => {
        try {
            const wastageData = await Wastage.find();
            io.emit('wastageData', wastageData);
        } catch (error) {
            console.error('Error emitting wastage data:', error.message);
        }
    };

    sendWastageData();

    // Listen for new data entry and emit updated data
    socket.on('newWastage', async (data) => {
        try {
            const newWastage = new Wastage(data);
            await newWastage.save();
            sendWastageData();
        } catch (error) {
            console.error('Error saving new wastage data:', error.message);
        }
    });

    socket.on('disconnect', () => {
        console.log('WebSocket disconnected');
    });
});

const PORT = process.env.PORT || 5000;
server.listen(PORT, () => console.log(`Server running on port ${PORT}`));
