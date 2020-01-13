import React, { Component } from 'react'

export default class Footer extends Component {
    render() {
        return (
            <footer className="site-footer"> 
                <div className="container"> <div className="row"> 
                    <div className="col-sm-6">
                        Copyright &copy; ProcChain - All Rights Reserved. 
                    </div> 
                    <div className="col-sm-6"> 
                        <ul className="social-networks text-right"> 
                            <li> <a href="/"> <i className="entypo-instagram"></i> </a> </li>
                            <li> <a href="/"> <i className="entypo-twitter"></i> </a> </li> 
                            <li> <a href="/"> <i className="entypo-facebook"></i> </a> </li> 
                        </ul> 
                    </div> 
                    </div> 
                </div> 
            </footer>
        )
    }
}
