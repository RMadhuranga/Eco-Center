// src/App.js
import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Login from './components/Login';
import NavigationBar from './components/NavigationBar'; // Replace Sidebar with NavigationBar
import Home from './components/Home';
import Dashboard from './components/Dashboard';
import About from './components/About';
import Contact from './components/Contact';
import './App.css';
import Footer from './components/Footer';

const App = () => {
  return (
    <Router>
      <div className="app">
        <NavigationBar /> {/* Use the new NavigationBar */}
        <div className="main-content">
          <Routes>
            <Route path="/" element={<Login />} />
            <Route path="/home" element={<Home />} />
            <Route path="/dashboard" element={<Dashboard />} />
            <Route path="/about" element={<About />} />
            <Route path="/contact" element={<Contact />} />
          </Routes>
        </div>
        <Footer/>
      </div>
    </Router>
  );
};

export default App;




