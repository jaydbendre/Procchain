import React, { Component } from 'react'
import Logo from './Logo';
import MainMenu from './MainMenu';
import {Link} from 'react-router-dom';

const links = {
    left : [
        {icon : "entypo-gauge", title : "Gail", link : "/GailOrg", className : ""},
        {icon : "entypo-gauge", title : "Supplier", link : "/Supplier", className : ""},
        {icon : "entypo-gauge", title : "Shipment", link : "/shipment", className : ""},
    ],
    right : [
        {icon : "entypo-gauge", title : "Profile", link : "/GailOrg", className : ""},
        {icon : "entypo-logout right", title : "Logout", link : "/auth-login", className : ""},
    ],    
}

export default class index extends Component {
    render() {
        return (
            <header className="navbar navbar-fixed-top">
                <div className="navbar-inner">

                    {/* Logo */}
                    <Logo />

                    {/* Navlinks */}
                    <ul className="navbar-nav">
                        {this.props.links.left.map((link, index) => {
                            return <MainMenu 
                                {...link}
                                key = {index}
                                loaction = {this.props.location}
                            />
                        })}
                    </ul>

                    {/* Logout and profile */}
                    <ul className="nav navbar-right pull-right" id = "main-menu">
                        {this.props.links.right.map((link,index) => {
                            return <MainMenu 
                                {...link}
                                key = {index}
                                loaction = {this.props.location}
                            /> 
                        })}

                        {/* mobile */}
                        <li className="visible-xs"> 
                            
                            <div className="horizontal-mobile-menu visible-xs"> 
                                <Link to="/GailOrg" className="menu-trigger">
                                    <i className="entypo-menu"></i> 
                                </Link> 
                            </div> 
                        </li>
                    </ul>
                </div>
                    {/* <p>{this.props.links.left[0].icon}</p> */}
            </header>
        )
    }
}
