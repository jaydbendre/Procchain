import React, { Component } from 'react'
import Nav from '../../common/Dashboard/HorizontalMenu';

export default class index extends Component {
    render() {
        return (
            <div className="page-container horizontal-menu">
                {/* <SideMenu /> */}
                {/* Navbar */}
                <Nav 
                    links = {this.props.links}
                    loaction = {this.props.location}
                />
            </div>
        )
    }
}
