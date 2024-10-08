// routes/authRoutes.js
const express = require('express');
const { registerUser, loginUser } = require('../controllers/authController');
const router = express.Router();

// Register route for Wholeseller and Truck Driver
router.post('/register', registerUser);

// Login route for both roles
router.post('/login', loginUser);

module.exports = router;
