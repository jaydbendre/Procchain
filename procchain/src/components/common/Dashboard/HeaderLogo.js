import React, { Component } from 'react'
import logo from '../../../assets/images/logo@2x.png';

export default class HeaderLogo extends Component {
    render() {
        return (
            <header className="logo-env">
                
                {/* logo */}
                <div className="logo"> 
                    <a href="/"> 
                        <img src={logo} width="120" alt="" /> 
                    </a> 
                </div>

                {/* logo collapse icon */}
                <div className="sidebar-collapse"> 
                    <a href="#" className="sidebar-collapse-icon">
                        <i className="entypo-menu"></i> 
                    </a> 
                </div>

                {/* open/close menu icon */}
                <div className="sidebar-mobile-menu visible-xs">
                    <a href="#" className="with-animation">
                        <i className="entypo-menu"></i> 
                    </a> 
                </div> 
            </header>
        )
    }
}

