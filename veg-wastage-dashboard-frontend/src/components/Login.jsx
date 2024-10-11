// src/components/Login.js
import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import './Login.css';
import backgroundImage from '../assets/images/login-background.jpg'; // Import the background image

const Login = () => {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [email, setEmail] = useState(''); // For sign-up email input
  const [isSignUp, setIsSignUp] = useState(false); // State to switch between Sign In and Sign Up
  const navigate = useNavigate();

  // Handle login functionality
  const handleLogin = (e) => {
    e.preventDefault();
    // Example authentication logic
    if (username === 'admin' && password === 'password') {
      navigate('/home'); // Navigate to home page after login
    } else {
      alert('Invalid login credentials');
    }
  };

  // Handle sign-up functionality
  const handleSignUp = (e) => {
    e.preventDefault();
    // Placeholder sign-up logic (replace with backend integration)
    console.log('New user registered:', { username, email, password });
    alert('Sign up successful! Please log in.');
    setIsSignUp(false); // Switch to sign in after successful sign up
  };

  return (
    <div className="login-container">
      <div className="login-box">
        <h2>{isSignUp ? 'Eco Center - Sign Up' : 'Eco Center - Sign In'}</h2>
        
        <form onSubmit={isSignUp ? handleSignUp : handleLogin}>
          {isSignUp && ( // Show email field only for Sign Up
            <div className="input-group">
              <label htmlFor="email">Email</label>
              <input
                type="email"
                id="email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                placeholder="Enter Email"
                required
              />
            </div>
          )}

          <div className="input-group">
            <label htmlFor="username">Username</label>
            <input
              type="text"
              id="username"
              value={username}
              onChange={(e) => setUsername(e.target.value)}
              placeholder="Enter Username"
              required
            />
          </div>

          <div className="input-group">
            <label htmlFor="password">Password</label>
            <input
              type="password"
              id="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              placeholder="Enter Password"
              required
            />
          </div>

          <button type="submit" className="login-button">
            {isSignUp ? 'Sign Up' : 'Login'}
          </button>
        </form>

        {/* Toggle Sign In/Sign Up Form */}
        <div className="toggle-form">
          {isSignUp ? (
            <p>
              Already have an account?{' '}
              <span onClick={() => setIsSignUp(false)} className="toggle-link">
                Sign In
              </span>
            </p>
          ) : (
            <p>
              New here?{' '}
              <span onClick={() => setIsSignUp(true)} className="toggle-link">
                Sign Up
              </span>
            </p>
          )}
        </div>
      </div>
    </div>
  );
};

export default Login;


