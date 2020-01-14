import React, { Component } from 'react'
import HeaderLogo from '../common/Dashboard/HeaderLogo'; 
import UserInfo from '../common/Dashboard/UserInfo';
import MenuLinks from './MenuLinks';

export default class SideMenu extends Component {
    render() {
        return (
            <div className="sidebar-menu" style = {{position : "absolute", top : "0", bottom : "0",left : "0"}}>
                <div className="sidebar-menu-inner" style = {{height : "100%"}}>
                    <HeaderLogo />
                    <UserInfo />
                    <MenuLinks />
                </div>
            </div>
        )
    }
}
