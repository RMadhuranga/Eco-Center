const express = require('express');
const cors = require('cors');
const connectDB = require('./config/db');
const wastageRoutes = require('./routes/wastageRoutes');
const http = require('http');
const { Server } = require('socket.io');

const app = express();
connectDB();

// Middleware
app.use(express.json());
app.use(cors());

// Routes
app.use('/api/wastage', wastageRoutes);

// Start server
const server = http.createServer(app);
const io = new Server(server, {
    cors: {
        origin: "*",
        methods: ["GET", "POST", "PUT", "DELETE"],
    },
});

io.on('connection', (socket) => {
    console.log('A user connected');

    // Notify all clients about data changes
    socket.on('dataChanged', () => {
        socket.broadcast.emit('updateData');
    });

    socket.on('disconnect', () => {
        console.log('A user disconnected');
    });
});

// Listen to CRUD operations and broadcast changes
app.post('/api/wastage', (req, res, next) => {
    next();
    io.emit('dataChanged');
});

app.put('/api/wastage/:id', (req, res, next) => {
    next();
    io.emit('dataChanged');
});

app.delete('/api/wastage/:id', (req, res, next) => {
    next();
    io.emit('dataChanged');
});

const PORT = process.env.PORT || 5000;
server.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
