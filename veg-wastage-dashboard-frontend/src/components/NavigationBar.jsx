// src/components/NavigationBar.jsx
import React from 'react';
import { NavLink } from 'react-router-dom';
import './NavigationBar.css'; // Import the CSS file for navigation bar styling
import logo from '../assets/images/logo.png'; // Make sure to add your logo image to the assets/images folder

const NavigationBar = () => {
  return (
    <nav className="navigation-bar">
      <div className="nav-logo">
        {/* Replace the h tag with an img tag for the logo */}
        <img src={logo} alt="Veggie Store Logo" className="logo-image" />
      </div>
      <ul className="nav-links">
        <li>
          <NavLink to="/home" className={({ isActive }) => (isActive ? 'nav-link active' : 'nav-link')}>
            Home
          </NavLink>
        </li>
        <li>
          <NavLink to="/dashboard" className={({ isActive }) => (isActive ? 'nav-link active' : 'nav-link')}>
            Dashboard
          </NavLink>
        </li>
        <li>
          <NavLink to="/about" className={({ isActive }) => (isActive ? 'nav-link active' : 'nav-link')}>
            About Us
          </NavLink>
        </li>
        <li>
          <NavLink to="/contact" className={({ isActive }) => (isActive ? 'nav-link active' : 'nav-link')}>
            Contact Us
          </NavLink>
        </li>
        <li>
          <NavLink to="/" className={({ isActive }) => (isActive ? 'nav-link active' : 'nav-link')}>
            Logout
          </NavLink>
        </li>
      </ul>
      <div className="user-info">
        {/* Right-aligned user info */}
        <img
          src="https://via.placeholder.com/40"
          alt="User Profile"
          className="user-avatar"
        />
        <span className="user-name">Admin</span>
      </div>
    </nav>
  );
};

export default NavigationBar;

