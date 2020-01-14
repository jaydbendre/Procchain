import React, { Component } from 'react';
import logo from '../../../assets/images/thumb-1@2x.png';

export default class UserInfo extends Component {
    render() {
        return (
            <div className="sidebar-user-info"> 
                <div className="sui-normal"> 
                    <a href="/" className="user-link"> 
                        <img src={logo} width="55" alt="" className="img-circle" /> 
                        <span>Welcome,</span> <strong>Art Ramadani</strong> 
                    </a> 
                </div> 
                <div className="sui-hover inline-links animate-in"> 
                    <a href="#"> 
                        <i className="entypo-pencil"></i>New Page
                    </a> 
                    <a href="../../mailbox/main/index.html"> 
                        <i className="entypo-mail"></i>Inbox
                    </a> 
                    <a href="../../extra/lockscreen/index.html"> 
                        <i className="entypo-lock"></i>Log Off
                    </a> 
                    <span className="close-sui-popup">&times;</span>
                </div> 
            </div>
        )
    }
}
