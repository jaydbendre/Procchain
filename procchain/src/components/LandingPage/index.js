import React, { Component } from 'react';
// import {Route, BrowserRouter} from 'react-router-dom';
// import "../../assets/frontend/css/bootstrap.css";
// import '../../assets/frontend/css/font-icons/entypo/css/entypo.css';
// import '../../assets/frontend/css/neon.css';

import NavBar from './NavBar';
import Carousel from './Carousel';
import AboutUs from './AboutUs';
import Services from './Services';
import Team from './Team';
import ContactUs from './ContactUs';
import Footer from './Footer';
// import Technologies from './Technologies';

export default class index extends Component {
    render() {
        return (
            <div>
                
                <NavBar/>
                <Carousel />
                <AboutUs />
                <Services />
                <Team />
                <ContactUs/>
                <Footer />

            </div>
            
        )
    }
}
