// server.js
const express = require('express');
const dotenv = require('dotenv');
const connectDB = require('./config/db');
const cors = require('cors');
const authRoutes = require('./routes/authRoutes');
const marketRoutes = require('./routes/marketRoutes');  // Import market routes


dotenv.config();

// Connect to database
connectDB();

const app = express();

// Middleware
app.use(express.json());
app.use(cors());

// Authentication Routes
app.use('/api/auth', authRoutes);

// Market Routes
app.use('/api', marketRoutes);  // Add market routes

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
