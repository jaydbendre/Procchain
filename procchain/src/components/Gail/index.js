import React, { Component } from 'react'
// import 'bootstrap/dist/css/bootstrap.min.css';
// import '../../assets/css/skins/black.css';
import SideMenu from './SideMenu';

export default class index extends Component {
    render() {
        return (
            <div className="page-body page-fade">
                <div className="page-container">
                    <SideMenu />
                </div>
            </div>
        )
    }
}
