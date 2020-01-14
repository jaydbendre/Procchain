import React, { Component } from 'react'
import {Route, BrowserRouter} from 'react-router-dom';

import Login from '../../components/Login_Registeration/Login';
import Register from '../../components/Login_Registeration/Registeration';
import ForgotPassword from '../../components/Login_Registeration/ForgotPassword';
import LockScreen from '../../components/Login_Registeration/LockScreen';


export default class index extends Component {
    render() {
        return (
            <BrowserRouter>
                <Route exact path="/auth-login" component = {Login} />
                <Route exact path='/auth-register' component = {Register} />
                <Route exact path='/forgot-password' component = {ForgotPassword} />
                <Route exact path='/logged-out' component={LockScreen} />
            </BrowserRouter>
        )
    }
}
