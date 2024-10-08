const mongoose = require('mongoose');

const WastageSchema = new mongoose.Schema({
    date: { type: Date, required: true },
    vegetableType: { type: String, required: true },
    productionQuantityKg: { type: Number, required: true },
    wastageQuantityKg: { type: Number, required: true },
    wastagePercentage: { type: Number, required: true },
});

const mongoose = require('mongoose');


const Wastage = mongoose.model('Wastage', WastageSchema);


