const Wastage = require('../models/Wastage');


exports.insertWastage = async (req, res) => {
    try {
        const newWastage = new Wastage(req.body);
        await newWastage.save();
        res.status(201).json(newWastage);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};


const updateWastage = async (req, res) => {
    try {
        const { id } = req.params;
        const updatedWastage = await Wastage.findByIdAndUpdate(id, req.body, { new: true });
        res.status(200).json(updatedWastage);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};


const deleteWastage = async (req, res) => {
    try {
        const { id } = req.params;
        await Wastage.findByIdAndDelete(id);
        res.status(200).json({ message: 'Record deleted successfully' });
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};


const getAllWastage = async (req, res) => {
    try {
        const wastageData = await Wastage.find();
        res.status(200).json(wastageData);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
};

module.exports = {
    insertWastage,
    updateWastage,
    deleteWastage,
    getAllWastage,
};
