import React, { Component } from 'react'

export default class MenuLink extends Component {
    render() {
        return (
            <li>
                <a href={this.props.link}>
                    <i className={this.props.icon}></i>
                    <span className="title">{this.props.title}</span>
                </a>
            </li>
        )
    }
}
