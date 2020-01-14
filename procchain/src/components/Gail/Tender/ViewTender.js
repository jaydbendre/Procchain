import React, { Component } from 'react';
import {Link} from 'react-router-dom';
import HorizontalMenu from '../HorizontalMenu';
import {links} from '../index';

export default class ViewTender extends Component {
    render() {
        return (
            <div className="page-body">
                <HorizontalMenu 
                    links = {links}
                />
                <div className="main-content">
                    <h1>{this.props.location.pathname}</h1>
                </div>
            </div>
        )
    }
}
