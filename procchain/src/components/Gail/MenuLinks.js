import React, { Component } from 'react';
import MenuLink from '../common/Dashboard/MenuLink';

const links = [
    {link : "/auth-login", title : "Dashboard", icon : "entypo-gauge"},
    {link : "/auth-login", title : "Dashboard", icon : "entypo-gauge"},
    {link : "/auth-login", title : "Dashboard", icon : "entypo-gauge"},
    {link : "/auth-login", title : "Dashboard", icon : "entypo-gauge"},
    {link : "/auth-login", title : "Dashboard", icon : "entypo-gauge"},
    {link : "/auth-login", title : "Dashboard", icon : "entypo-gauge"},
]

export default class MenuLinks extends Component {
    render() {
        return (
            <ul id = "main-menu" className = "main-menu">
                {links.map((link, index) => {
                    return <MenuLink 
                        {...link}
                        key = {index}
                    />
                })}
            </ul>
        )
    }
}
