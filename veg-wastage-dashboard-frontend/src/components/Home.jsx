import React from 'react';
import Slider from 'react-slick';
import './Home.css';
import 'slick-carousel/slick/slick.css';
import 'slick-carousel/slick/slick-theme.css';
import header1 from '../assets/images/header1.jpg';
import header2 from '../assets/images/header2.jpg';
import header3 from '../assets/images/header3.jpg';
import missionImage from '../assets/images/mission.svg';
import visionImage from '../assets/images/vision.svg';
// Importing React Icons
import { FaShippingFast, FaDoorOpen, FaLeaf, FaHandPointRight, FaTags } from 'react-icons/fa';

const Home = () => {
  const settings = {
    dots: true,
    infinite: true,
    speed: 500,
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 3000,
    pauseOnHover: true,
  };

  return (
    <div className="home-container">
      <div className="home-header">
        <Slider {...settings} className="header-slider">
          <div>
            <img src={header1} alt="Header 1" className="slider-image" />
          </div>
          <div>
            <img src={header2} alt="Header 2" className="slider-image" />
          </div>
          <div>
            <img src={header3} alt="Header 3" className="slider-image" />
          </div>
        </Slider>
        <h1 className="header-title">WELCOME TO OUR VEGETABLE STORE</h1>
        <div className="header-info">
          <p><FaShippingFast /> Delivery within 24 Hours</p>
          <p><FaDoorOpen /> Deliver to Doorstep</p>
          <p><FaLeaf /> Freshness Guaranteed</p>
          <p><FaHandPointRight /> Click and Collect</p>
          <p><FaTags /> Amazing Deals</p>
        </div>
      </div>

      {/* Project Mission Section */}
      <div className="mission-section">
        <div className="text-content">
          <h2 className='text-content-header'>Our Mission</h2>
          <p>
            Our mission is to provide the highest quality, organic produce to
            our community. We aim to support local farmers and promote
            sustainable agriculture practices by bringing fresh, healthy
            vegetables to your doorstep.
          </p>
        </div>
        <div className="image-content">
          <img src={missionImage} alt="Our Mission" className="section-image" />
        </div>
      </div>

      {/* Project Vision Section */}
      <div className="vision-section">
        <div className="image-content">
          <img src={visionImage} alt="Our Vision" className="section-image" />
        </div>
        <div className="text-content">
          <h2 className='text-content-header'>Our Vision</h2>
          <p>
            Our vision is to create a healthier future by making fresh, organic
            produce accessible to everyone. We strive to be a leader in the
            industry, setting a standard for quality, sustainability, and
            exceptional service.
          </p>
        </div>
      </div>
    </div>
  );
};

export default Home;


