import React, { Component } from 'react';
// import {NavLink} from 'react-router-dom';

export default class NavLinks extends Component {
    render() {
        return (
            <li>
                <a href = {this.props.href} data-target={this.props.dataTarget}>{this.props.span}</a>
                {/* <a href="#team">{this.props.span}</a> */}
            </li>
        )
    }
}
