import React, { Component } from 'react'
import logo from '../../assets/frontend/images/logoWhiteBg.png';

export default class Login extends Component {
    render() {
        return (
            <div className="page-body login-page">
                <div className="login-container">
                    
                    {/* First Half */}
                    <div className="login-header login-caret"> 
                        <div className="login-content"> 
                            <a href="/" className="logo"> 
                                <img src={logo} width="250" alt="" /> 
                            </a> 
                            <p className="description">Dear user, log in unlock access to ProcChain!</p> 
                            {/* <div className="login-progressbar-indicator"> 
                                <h3>43%</h3> 
                                <span>logging in...</span> 
                            </div>  */}
                        </div> 
                    </div>

                    {/* Login Progressbar */}
                    {/* <div className="login-progressbar"> 
                        <div></div> 
                    </div> */}

                    {/* Login Form */}
                    <div className="login-form"> 
                        <div className="login-content"> 
                            {/* <div className="form-login-error"> 
                                <h3>Invalid login</h3> 
                                <p>Enter <strong>demo</strong>/<strong>demo</strong> as login and password.</p> 
                            </div>  */}

                            {/* Form */}
                            <form method="post"> 
                                {/* Username */}
                                <div className="form-group"> 
                                    <div className="input-group"> 
                                        <div className="input-group-addon"> 
                                            <i className="entypo-user"></i> 
                                        </div> 
                                        <input type="text" className="form-control" name="username" id="username" placeholder="Username" autocomplete="off" /> 
                                    </div>
                                </div> 
                                {/* Password */}
                                <div className="form-group"> 
                                    <div className="input-group"> 
                                        <div className="input-group-addon"> 
                                            <i className="entypo-key"></i> 
                                        </div> 
                                        <input type="password" className="form-control" name="password" id="password" placeholder="Password" autocomplete="off" /> 
                                    </div> 
                                </div> 
                                <div className="form-group"> 
                                    <button type="submit" className="btn btn-primary btn-block btn-login"> 
                                        <i className="entypo-login"></i>Login In
                                    </button> 
                                </div>  
                            </form> 

                            {/* Forgot Password */}
                            <div className="login-bottom-links"> 
                                <a href="/" className="link">Forgot your password?</a> 
                                {/* <br/> */}
                            </div> 
                        </div> 
                        <br/>
                    </div>
                </div>
            </div>
        )
    }
}