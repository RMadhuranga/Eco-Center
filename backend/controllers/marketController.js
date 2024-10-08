// controllers/marketController.js
const markets = require('../data/markets');
const User = require('../models/userModel');

// Get available markets
exports.getMarkets = (req, res) => {
  res.json(markets);  // Return available markets
};

// Set the selected market for wholeseller
exports.selectMarket = async (req, res) => {
  const { marketId } = req.body;

  // Check if the user is a wholeseller
  if (req.user.role !== 'wholeseller') {
    return res.status(403).json({ message: 'Access denied. Only wholesellers can select markets.' });
  }

  // Check if the marketId is valid
  const market = markets.find((m) => m.id === marketId);
  if (!market) {
    return res.status(404).json({ message: 'Market not found' });
  }

  // Update the user's selected market
  try {
    const user = await User.findById(req.user.id);
    user.selectedMarket = market.name;
    await user.save();

    res.json({
      message: `Market selected: ${market.name}`,
      selectedMarket: market.name,
    });
  } catch (error) {
    res.status(500).json({ message: 'Server error', error });
  }
};
