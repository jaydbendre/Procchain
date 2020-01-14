import React, { Component } from 'react'
import {Link, Redirect} from 'react-router-dom';

export default class MainMenu extends Component {
    render() {
        // const links = this.props.links;
        return (
            <li className={this.props.className}>
                <Link to={{pathname: this.props.link}}>
                    <i className={this.props.icon}></i>
                    <span className="title">{this.props.title}</span>
                </Link>
            </li>
        )
    }
}
