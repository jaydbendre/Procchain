import React, { Component } from 'react'
import {Link} from 'react-router-dom';

export default class CarouselSlide extends Component {
    render() {
        return (
            <div class="slide"> 
                <div class="slide-content"> 
                    <h2 style ={{fontSize : '20px'}} >
                        {this.props.message}
                    </h2 > 
                    <p style ={{fontSize : '15px'}}>
                        {/* Neon &ndash; is flat admin template for multi-purpose usage built<br /> with the latest version of Bootstrap &ndash; 3. */}
                        {this.props.text}
                        
                    </p>
                    <p>
                        <Link to = "auth-login" className="btn btn-large btn-default"><b>SIGN IN</b></Link>
                        {/* <span className="visible-lg">&nbsp;&nbsp;</span> */}
                        &nbsp;&nbsp;
                        <Link to = "auth-register" className="btn btn-large btn-default"><b>SIGN UP</b></Link>
                    </p> 
                </div> 
                <div class="slide-image"> 
                    <Link to="/"> 
                        <img src={this.props.image} class="img-responsive" alt = "slide" /> 
                    </Link> 
                </div> 
            </div>
        )
    }
}
