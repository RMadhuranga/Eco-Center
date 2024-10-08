// routes/marketRoutes.js
const express = require('express');
const { getMarkets, selectMarket } = require('../controllers/marketController');
const { protect } = require('../middlewares/authMiddleware');
const router = express.Router();

// Get available markets
router.get('/markets', protect, getMarkets);

// Select a market (only for wholesellers)
router.post('/markets/select', protect, selectMarket);

module.exports = router;
