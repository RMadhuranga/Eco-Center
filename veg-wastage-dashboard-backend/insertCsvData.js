const mongoose = require('mongoose');
const fs = require('fs');
const csv = require('csv-parser');
const dotenv = require('dotenv');
const Wastage = require('./models/Wastage');
const path = require('path');

dotenv.config();

const connectDB = async () => {
    try {
        await mongoose.connect(process.env.MONGO_URI);
        console.log('MongoDB connected');
    } catch (error) {
        console.error('MongoDB connection failed:', error.message);
        process.exit(1);
    }
};

const insertCsvData = async () => {
    await connectDB();

    const csvFilePath = path.join(__dirname, 'data', 'vegetable_wastage_ dabulla.csv');

    const wastageData = []; // Array to hold all wastage documents

    fs.createReadStream(csvFilePath)
        .pipe(csv())
        .on('data', (row) => {
            try {
                // Extract CSV row data
                const {
                    Date: dateString,
                    'Vegetable Type': vegetableType,
                    'Production Quantity (kg)': productionQuantityKg,
                    'Wastage Quantity (kg)': wastageQuantityKg,
                    'Wastage Percentage (%)': wastagePercentage,
                } = row;

                // Date conversion from 'M/D/YYYY' to Date object
                const [month, day, year] = dateString.split('/');
                const date = new Date(`${year}-${month}-${day}`);

                if (isNaN(date.getTime())) {
                    throw new Error(`Invalid date format: ${dateString}`);
                }

                // Create a new Wastage document
                const newWastage = new Wastage({
                    date,
                    vegetableType,
                    productionQuantityKg: parseFloat(productionQuantityKg),
                    wastageQuantityKg: parseFloat(wastageQuantityKg),
                    wastagePercentage: parseFloat(wastagePercentage),
                });

                // Push the new wastage document to the array
                wastageData.push(newWastage);
            } catch (error) {
                console.error('Failed to process row:', error.message);
            }
        })
        .on('end', async () => {
            try {
                // Insert all documents at once
                await Wastage.insertMany(wastageData);
                console.log(`Inserted ${wastageData.length} records successfully.`);
            } catch (error) {
                console.error('Failed to insert records:', error.message);
            } finally {
                mongoose.disconnect(); // Ensure we disconnect
            }
        });
};

insertCsvData();
