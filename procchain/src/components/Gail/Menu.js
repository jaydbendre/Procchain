import React, { Component } from 'react'
import { Fragment } from 'react';
import {
  Collapse,
  Navbar,
  NavbarToggler,
  NavbarBrand,
  Nav,
  NavItem,
  NavLink
} from 'reactstrap';
import {NavLink as ReactLink} from 'react-router-dom';
import panda from '../../assets/images/logo@2x.png'


export default class Menu extends Component {
    constructor(props) {
        super(props);
    
        this.toggle = this.toggle.bind(this);
        this.state = {
          isOpen: false
        };
      }
    
      toggle() {
        this.setState({
          isOpen: !this.state.isOpen
        });
      }
    
      componentDidMount() {
        window.addEventListener('scroll', this.handleScroll, true);
      }
    
      navClass = React.createRef();
    
      handleScroll = () => {
    
        if(window.scrollY >= 10){
            document.getElementById("navbar").classList.add("navbar-onscroll");
        }else {
          document.getElementById("navbar").classList.remove("navbar-onscroll");
        }
    
      }
    
    render() {
        return (<Fragment ref={this.navClass}>
            <Navbar expand="md" id = "navbar" vertical>
              <NavbarBrand href="/" ><img src={panda} alt="logo" className="navbar-logo" />Panda App</NavbarBrand>
              <NavbarToggler onClick={this.toggle} color="primary" className="mr-2" />
              <Collapse isOpen={this.state.isOpen} navbar>
                <Nav className="ml-auto" vertical>
                  <NavItem>
                    <NavLink href="/">Features</NavLink>
                  </NavItem>
                  <NavItem>
                    <NavLink href="/">About</NavLink>
                  </NavItem>
                  <NavItem>
                    <NavLink href="/">Pricing</NavLink>
                  </NavItem>
                  <NavItem>
                    <NavLink tag={ReactLink} to="/auth-user" className="nav-sign-in">Sign In</NavLink>
                    {/* <Link to="/login-user">Sign In</Link> */}
                  </NavItem>
                  <NavItem>
                    <NavLink href="/auth-register" className="nav-sign-Up">Sign Up</NavLink>
                  </NavItem>
                </Nav>
              </Collapse>
            </Navbar>
            {this.props.children}
          </Fragment>
          );
    }
}
