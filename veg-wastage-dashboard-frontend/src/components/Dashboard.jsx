import React, { useState } from 'react';
import './Dashboard.css';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import AddItemPanel from './AddItemPanel';

import broccoliImg from '../assets/images/broccoli.jpg';
import cabbageImg from '../assets/images/cabbage.jpg';
import capsicumImg from '../assets/images/capsicum.jpg';
import carrotImg from '../assets/images/carrot.jpg';
import cucumberImg from '../assets/images/cucumber.jpg';
import lettuceImg from '../assets/images/lettuce.jpg';
import onionImg from '../assets/images/onion.jpg';
import potatoImg from '../assets/images/potato.jpg';

const initialVegetables = [
  { id: 1, code: 'VEG001', name: 'Broccoli', price: 40, quantity: 30, image: broccoliImg },
  { id: 2, code: 'VEG002', name: 'Cabbage', price: 70, quantity: 15, image: cabbageImg },
  { id: 3, code: 'VEG003', name: 'Capsicum', price: 30, quantity: 50, image: capsicumImg },
  { id: 4, code: 'VEG004', name: 'Carrot', price: 20, quantity: 20, image: carrotImg },
  { id: 5, code: 'VEG005', name: 'Cucumber', price: 25, quantity: 100, image: cucumberImg },
  { id: 6, code: 'VEG006', name: 'Lettuce', price: 50, quantity: 60, image: lettuceImg },
  { id: 7, code: 'VEG007', name: 'Onion', price: 30, quantity: 45, image: onionImg },
  { id: 8, code: 'VEG008', name: 'Potato', price: 80, quantity: 10, image: potatoImg },
];

const Dashboard = () => {
  const [vegetables, setVegetables] = useState(initialVegetables);
  const [showAddPanel, setShowAddPanel] = useState(false);
  const [showList, setShowList] = useState(false);

  const handleRemove = (id) => {
    const updatedVegetables = vegetables.filter((veg) => veg.id !== id);
    setVegetables(updatedVegetables);
    toast.success('Item removed successfully!');
  };

  const handleAddItem = (newVegetable) => {
    const newCode = `VEG${(vegetables.length + 1).toString().padStart(3, '0')}`; // Generating unique code
    setVegetables((prev) => [
      ...prev,
      { ...newVegetable, id: prev.length + 1, code: newCode }, 
    ]);
    toast.success(`${newVegetable.name} added successfully!`);
    setShowAddPanel(false);
  };

  const handleQuantityChange = (id, increment) => {
    const updatedVegetables = vegetables.map((veg) =>
      veg.id === id
        ? { ...veg, quantity: veg.quantity + increment }
        : veg
    );
    setVegetables(updatedVegetables);
  };

  return (
    <div className="dashboard-container">
      <div className="center-content">
        <h2>Vegetable Dashboard</h2>
      </div>

      <div className="dashboard-controls">
        <button className="btn view-list" onClick={() => setShowList(true)}>
          View List
        </button>
        <button className="btn add-item" onClick={() => setShowAddPanel((prev) => !prev)}>
          {showAddPanel ? 'Cancel' : 'Add Item'}
        </button>
      </div>

      {showAddPanel && <AddItemPanel onAddItem={handleAddItem} />}

      {showList && (
        <div className="vegetable-table-container">
          <table className="vegetable-table">
            <thead>
              <tr>
                <th>Code</th>
                <th>Image</th>
                <th>Name</th>
                <th>Price (Rs.)</th>
                <th>Quantity (kg)</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              {vegetables.map((vegetable) => (
                <tr key={vegetable.id}>
                  <td>{vegetable.code}</td>
                  <td>
                    <img src={vegetable.image} alt={vegetable.name} className="vegetable-image" />
                  </td>
                  <td>{vegetable.name}</td>
                  <td>{vegetable.price}</td>
                  <td>
                    <button onClick={() => handleQuantityChange(vegetable.id, -1)} disabled={vegetable.quantity === 0} className="quantity-button">-</button>
                    {vegetable.quantity}
                    <button onClick={() => handleQuantityChange(vegetable.id, 1)} className="quantity-button">+</button>
                  </td>
                  <td>
                    <button onClick={() => handleRemove(vegetable.id)} className="remove-button">x</button>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      )}

      <ToastContainer />
    </div>
  );
};

export default Dashboard;


