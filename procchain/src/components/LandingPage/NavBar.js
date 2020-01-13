import React, { Component } from 'react'
import {Link} from 'react-router-dom';
import logo from '../../assets/frontend/images/logo@2x.png';

import NavLinks from '../common/LandingPage/NavLinks';

const links = [
    {href: "#aboutUs", span: "About Us", dataTarget: "aboutUs"},
    {href: "#services", span: "Services", dataTarget: "services"},
    {href: "#team", span: "Team", dataTarget: "team"},
    {href: "#contactUs", span: "Contact Us", dataTarget: "contactUs"},
    {href: "/auth-login", span: "Sign In", dataTarget: ""},
    {href: "/auth-register", span: "Sign Up", dataTarget: ""},
]

export default class NavBar extends Component {
    render() {
        return (
            <div className="site-header-container container">
                <div className="row">
                    <div className="col-md-12">
                        <header className="site-header">
                            <section className="site-logo">
                                <Link to="/">
                                    <img src={logo} width = "120" alt = "ProcChain" />
                                </Link>
                            </section>
                            <nav className="site-nav">
                                <ul className="main-menu hidden-xs" id = "main-menu">
                                    {/* <HashRouter> */}
                                        {links.map((link, index) => {
                                            return <NavLinks 
                                                {...link}
                                                key = {index}
                                            />
                                        })}
                                    {/* </HashRouter> */}
                                    
                                </ul>
                                <div className="visible-xs">
                                    <Link to="/" className="menu-trigger">
                                        <i className="entypo-menu"></i>
                                    </Link>
                                </div>
                            </nav>
                        </header>
                    </div>
                </div>
            </div>
        )
    }
}
