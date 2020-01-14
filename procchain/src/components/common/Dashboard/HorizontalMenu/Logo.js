import React, { Component } from 'react'
import logo from '../../../../assets/frontend/images/logoWhiteBg.png';

export default class Logo extends Component {
    render() {
        return (
            <div className="navbar-brand"> 
                <a href="/"> 
                    <img src={logo} width="88" alt="" /> 
                </a> 
            </div> 
            
        )
    }
}
