import React, { Component } from 'react'
import slide1 from '../../assets/frontend/images/hiclipart.com.png';
import slide2 from '../../assets/frontend/images/slide-img-2.png';
import slide3 from '../../assets/frontend/images/pngguru.com.png';
// import test from '../../assets/images/album-image-1.jpg'

import CarouselSlide from '../common/LandingPage/CarouselSlide';

const slides = [
    {image : slide1, message: "SIH2020", text: "Blockchain Powered Procurement System for GAIL  \n (Problem Statement Number : BK255)"},
    {image : slide2, message: "Motive", text: "Reducing latency time between the Vendor and GAIL, making tender procurement secure and hence more efficient using Ethereum"},
    {image : slide3, message: "Solution", text :" Web Based Application capable of dealing with all users involved in the supply chain between GAIL and Vendor"},
]

export default class Carousel extends Component {
    render() {
        return (
            <section className="slider-container">
                <div className="container">
                    <div className="row">
                        <div className="col-md-12">
                            <div className="slides">
                                
                                {slides.map((slide, index) => {
                                    return <CarouselSlide
                                        {...slide}
                                        key = {index}
                                    />
                                })}
                                {/* <img src={slide1} alt="ookay" /> */}
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        )
    }
}
