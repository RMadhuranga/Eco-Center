const express = require('express');
const router = express.Router();
const {
    insertWastage,
    updateWastage,
    deleteWastage,
    getAllWastage,
} = require('../controllers/wastageController');

router.post('/', insertWastage);
router.put('/:id', updateWastage);
router.delete('/:id', deleteWastage);
router.get('/', getAllWastage);

module.exports = router;
