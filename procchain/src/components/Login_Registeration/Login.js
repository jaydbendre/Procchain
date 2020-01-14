import React, { Component } from 'react'
import logo from '../../assets/frontend/images/logoWhiteBg.png';
import {withFormik} from 'formik';
import * as Yup from 'yup'; 

class Login extends Component {
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
                            <form method="post" onSubmit={this.props.handleSubmit}> 
                                {/* Email */}
                                <div className="form-group"> 
                                    <div className="input-group"> 
                                        <div className="input-group-addon"> 
                                            <i className="entypo-user"></i> 
                                        </div> 
                                        <input 
                                            type="text" 
                                            className="form-control" 
                                            name="email" 
                                            id="email" 
                                            placeholder="Email" 
                                            autocomplete="off" 
                                            onChange = {this.props.handleChange}
                                            onBlur = {this.props.onBlur}
                                        /> 
                                    </div>
                                    <p className="text-danger error">
                                        {(this.props.touched["email"] && this.props.errors["email"]) &&
                                            <span>{this.props.errors["email"]}</span>
                                        }
                                    </p>
                                </div> 
                                {/* Password */}
                                <div className="form-group"> 
                                    <div className="input-group"> 
                                        <div className="input-group-addon"> 
                                            <i className="entypo-key"></i> 
                                        </div> 
                                        <input 
                                            type="password" 
                                            className="form-control" 
                                            name="password" 
                                            id="password" 
                                            placeholder="Password" 
                                            autocomplete="off" 
                                            onChange = {this.props.handleChange}
                                            onBlur = {this.props.onBlur}
                                        /> 
                                    </div> 
                                    <p className="text-danger error">
                                        {(this.props.touched["password"] && this.props.errors["password"]) &&
                                            <span>{this.props.errors["password"]}</span>
                                        }
                                    </p>
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

export default withFormik({
    mapPropsToValues: () => ({
        email : '',
        password : '',
    }),

    validationSchema : Yup.object().shape({
        email: Yup.string().email("Enter a valid email").required('This is a required field.'),
        password : Yup.string().required("Fill the password!"),
    }),

    handleSubmit : (values, {setSubmitting}) => {
        console.log("Values : ", JSON.stringify(values));

        fetch('http://127.0.0.1:8000/login/', {
            method : 'POST',
            // dataType : 'jsonp',
            headers : {
                'Content-Type' : 'multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW;application/json; charset=UTF-8',
                // 'Accept': 'application/json, text/plain',
            },
            mode: 'no-cors',
            body : JSON.stringify(values)
        })
        .then(res => res.json())
        .then(res => console.log("JSON", JSON.stringify(res)))
        .catch(err => console.log(err))

    }

})(Login);