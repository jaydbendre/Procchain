import React, { Component } from 'react'
// import 'bootstrap/dist/css/bootstrap.min.css';
// import '../../assets/css/skins/black.css';
// import SideMenu from './SideMenu';
import HorizontalMenu from './HorizontalMenu';

export const links = {
    left : [
        {icon : "entypo-gauge", title : "Edit Tender", link : "/edit-tender", className : ""},
        {icon : "entypo-gauge", title : "Upload Tender", link : "/upload-tender", className : ""},
        {icon : "entypo-gauge", title : "View Tender", link : "/view-tender", className : ""},
    ],
    right : [
        {icon : "entypo-user", title : "Profile", link : "/GailOrg", className : ""},
        {icon : "entypo-logout right", title : "Logout ", link : "/auth-login", className : ""},
    ]
}



export default class index extends Component {
    render() {
        return (
            <div className="page-body">
                <HorizontalMenu 
                    links = {links}
                    loaction = {this.props.location}
                />
                <div className="main-content">
                    <h1>Welcome to ProcChain User!</h1>
                </div>
            </div>
        )
    }
}
