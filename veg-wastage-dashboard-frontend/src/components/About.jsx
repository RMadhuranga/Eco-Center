// src/components/About.js
import React from 'react';
import './About.css';
// Importing image for the left column
import aboutImage from '../assets/images/about.jpeg';

// Sample team member data for demonstration
const teamMembers = [
  { name: 'Janith', image: require('../assets/images/john.jpg') },
  { name: 'Rukmal', image: require('../assets/images/jane.jpg') },
  { name: 'Vidusha', image: require('../assets/images/emily.jpg') },
  { name: 'Sasanka', image: require('../assets/images/michael.jpg') },
  { name: 'Baghya', image: require('../assets/images/sarah.jpg') },
];

const About = () => {
  return (
    <div className="about-container">
      {/* Section 1: App Introduction */}
      <div className="about-section">
        {/* Left column with image */}
        <div className="about-image">
          <img src={aboutImage} alt="About Our App" className="about-img" />
        </div>
        {/* Right column with information */}
        <div className="about-info">
          <h1>About Our App</h1>
          <p>Welcome! Let's dive into the features and benefits of using our application:</p>
          <ul>
            <li>Seamless online shopping experience for fresh vegetables.</li>
            <li>Fast and reliable delivery within 24 hours.</li>
            <li>Easy order tracking and notifications for updates.</li>
            <li>Exclusive deals and promotions for regular customers.</li>
            <li>Support for local farmers and sustainable practices.</li>
          </ul>
        </div>
      </div>

      {/* Section 2: Team Introduction */}
      <div className="team-section">
        <h2>Meet Our Team</h2>
        <div className="team-grid">
          {teamMembers.map((member, index) => (
            <div className="team-member" key={index}>
              <img src={member.image} alt={member.name} className="team-img" />
              <p>{member.name}</p>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
};

export default About;


