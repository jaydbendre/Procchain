import React, { Component } from 'react'
import {Route, BrowserRouter} from 'react-router-dom';

import LandingPage from '../../components/LandingPage';
import Team from '../../components/LandingPage/Team';
import AboutUs from '../../components/LandingPage/AboutUs';
import Services from '../../components/LandingPage/Services';


export default class index extends Component {
    render() {
        return (
            <BrowserRouter>

                <Route exact path="/" component = {LandingPage} />
                <Route exact path="/aboutUs" component = {AboutUs}/>
                <Route exact path="/services" component = {Services}/>
                <Route exact path="/team" component = {Team} />
            
            </BrowserRouter>
        )
    }
}
