import React, { useState } from 'react';
import { toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import './AddItemPanel.css';

const AddItemPanel = ({ onAddItem }) => {
  const [code, setCode] = useState(''); // New state for vegetable code
  const [name, setName] = useState('');
  const [price, setPrice] = useState('');
  const [quantity, setQuantity] = useState('');
  const [image, setImage] = useState(null);

  const handleSubmit = (e) => {
    e.preventDefault();
    if (!code || !name || !price || !quantity || !image) {
      toast.error('Please fill in all fields and select an image.');
      return;
    }

    const newItem = {
      code,  // Including the code in the new item
      name,
      price,
      quantity,
      image,
    };

    onAddItem(newItem);
    toast.success(`${name} has been added!`);
    setCode('');
    setName('');
    setPrice('');
    setQuantity('');
    setImage(null);
  };

  const handleImageChange = (e) => {
    const file = e.target.files[0];
    if (file) {
      const reader = new FileReader();
      reader.onloadend = () => {
        setImage(reader.result);
      };
      reader.readAsDataURL(file);
    }
  };

  return (
    <div className="add-item-panel">
      <h2 className="panel-title">Add New Vegetable Item</h2>
      <form className="form-container" onSubmit={handleSubmit}>
        {/* Code Input */}
        <div className="form-group">
          <label htmlFor="code">Vegetable Code:</label>
          <input
            type="text"
            id="code"
            className="form-input"
            value={code}
            onChange={(e) => setCode(e.target.value)}
            placeholder="e.g., VEGE001"
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="name">Vegetable Name:</label>
          <input
            type="text"
            id="name"
            className="form-input"
            value={name}
            onChange={(e) => setName(e.target.value)}
            placeholder="e.g., Carrot"
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="price">Price (Rs):</label>
          <input
            type="number"
            id="price"
            className="form-input"
            value={price}
            onChange={(e) => setPrice(e.target.value)}
            placeholder="e.g., 50"
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="quantity">Quantity (kg):</label>
          <input
            type="number"
            id="quantity"
            className="form-input"
            value={quantity}
            onChange={(e) => setQuantity(e.target.value)}
            placeholder="e.g., 5"
            required
          />
        </div>

        <div className="form-group">
          <label htmlFor="image">Upload Image:</label>
          <input
            type="file"
            id="image"
            className="form-input"
            accept="image/*"
            onChange={handleImageChange}
            required
          />
        </div>

        {image && (
          <div className="image-preview-container">
            <img src={image} alt="Vegetable Preview" className="image-preview" />
          </div>
        )}

        <button type="submit" className="btn-submit">Add Item</button>
      </form>
    </div>
  );
};

export default AddItemPanel;


