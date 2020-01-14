import React, { Component } from 'react'
import logo from '../../assets/frontend/images/logo.png';

export default class ContactUs extends Component {
    render() {
        return (
            <section className="footer-widgets" id = "contactUs"> 
                <div className="container"> 
                    <div className="row"> 
                        <div className="col-sm-6"> 
                            <a href="/"> <img src={logo} width="150" alt="logo" /> </a> 
                            <p style ={{fontSize : '17px'}}>
                                Making Procurement Easier <br />
                            </p> 
                        </div> 
                        <div className="col-sm-3"> 
                            <h5 style ={{fontSize : '15px'}}>Address</h5> 
                            <p>VESIT <br />Collector's Colony, Chembur <br />Mumbai- 400074</p> 
                        </div> 
                        <div className="col-sm-3"> 
                            <h5 style ={{fontSize : '15px'}}>Contact</h5> 
                            <p style ={{fontSize : '15px'}}>
                                Team: <br />
                                CodeSparks
                            </p> 
                        </div> 
                    </div> 
                </div> 
            </section>
        )
    }
}
