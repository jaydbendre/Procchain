import React, { Component } from 'react'
import slide1 from '../../assets/frontend/images/test.png';
import slide2 from '../../assets/frontend/images/slide-img-2.png';
import slide3 from '../../assets/frontend/images/slide-img-3.png';
// import test from '../../assets/images/album-image-1.jpg'

import CarouselSlide from '../common/LandingPage/CarouselSlide';

const slides = [
    {image : slide1, message: "ProcChain Beta Version1"},
    {image : slide2, message: "ProcChain Beta Version2"},
    {image : slide3, message: "ProcChain Beta Version3"},
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
