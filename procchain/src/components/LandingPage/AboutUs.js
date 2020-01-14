import React, { Component } from 'react';
import HorizontalLine from '../common/HorizontalLine';

export default class AboutUs extends Component {
    render() {
        return (
            <section className="features-blocks" id = "aboutUs">
                <div className="container">
                    <h1 style={{textAlign: "center"}}>ABOUT US</h1>
                    <p style={{fontSize: '20px', textAlign: "center", padding: "10px", marginLeft: "10%", marginRight: "10%"}}>
                        ProcChain is an easy-to-use, efficient, blockchain based software to digitise a company's procurement system. 
                        It uses blockchain and proof of delivery for logistics and supply chain. 
                        The process of bidding on tenders is also digitised and implemented on blockchain. 
                        The software provides personalised dashboards according to your requirements making it very user-friendly.
                    </p>
                    <div className="row vspace">
                        
                    </div>
                    <HorizontalLine/>
                </div>
            </section>
        )
    }
}
