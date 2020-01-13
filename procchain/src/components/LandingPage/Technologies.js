import React, { Component } from 'react'
import item1 from '../../assets/frontend/images/client-logo-1.png';
import item2 from '../../assets/frontend/images/client-logo-2.png';
import item3 from '../../assets/frontend/images/client-logo-3.png';
import item4 from '../../assets/frontend/images/client-logo-4.png';


export default class Technologies extends Component {
    render() {
        return (
            <section className="clients-logo-container">
                <div className="container">
                    <div className="row">
                         <div className="client-logos carousel slide" data-ride="carousel" data-interval="5000">
                            <div className="carousel-inner">
                                <div className="item active">
                                    <a href = "#"> <img src={item1} alt="Technology" /> </a>
                                    <a href = "#"> <img src={item2} alt="Technology" /> </a>
                                    
                                    <img src={item3} alt="Technology" />
                                    <img src={item4} alt="Technology" />
                                </div>
                                <div className="item">
                                    <img src={item1} alt="Technology" />
                                    <img src={item2} alt="Technology" />
                                    <img src={item3} alt="Technology" />
                                    <img src={item4} alt="Technology" />
                                </div>
                            </div>
                         </div>
                    </div>
                </div>
            </section>
        )
    }
}
