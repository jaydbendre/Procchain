import React from 'react';
// import logo from './logo.svg';
// import './App.css';
import {Route, BrowserRouter} from 'react-router-dom';
import LandingPage from './components/LandingPage';
import Team from './components/LandingPage/Team';
import Login from './components/Login_Registeration/Login';
import AboutUs from './components/LandingPage/AboutUs';
import Services from './components/LandingPage/Services';
import Register from './components/Login_Registeration/Registeration';
import ForgotPassword from './components/Login_Registeration/ForgotPassword';
import LockScreen from './components/Login_Registeration/LockScreen';

function App() {
  return (
    <div>
      <BrowserRouter>

        <Route exact path="/" component = {LandingPage} />
        <Route exact path="/aboutUs" component = {AboutUs}/>
        <Route exact path="/services" component = {Services}/>
        <Route exact path="/auth-login" component = {Login} />
        <Route exact path="/team" component = {Team} />
        <Route exact path='/auth-register' component = {Register} />
        <Route exact path='/forgot-password' component = {ForgotPassword} />
        <Route exact path='/logged-out' component={LockScreen} />

      </BrowserRouter>
      
    </div>
  );
}

export default App;
