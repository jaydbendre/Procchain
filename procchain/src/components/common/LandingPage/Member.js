import React, { Component } from 'react'

const img = {
    position: "relative",
    top : "0",
    bottom : "0",
    left : "0",
    right : "0",
    margin : "auto"
}

export default class Member extends Component {
    render() {
        return (
            <div className="col-md-4 col-sm-12" style={{alignContent: "center"}}> 
                <div className="portfolio-item"> 
                    {/* <a href="index.html" className="image">  */}
                        <img src={this.props.image} className="image img-rounded" alt={this.props.name} align = "middle" style={img}/> 
                        {/* <span className="hover-zoom"></span>  */}
                    {/* </a>  */}
                    <br/>
                    <h4 style={{textAlign: "center"}}> 
                        {/* <a href="index.html" className="like"> <i className="entypo-heart"></i> </a>  */}
                        <span className="name" >{this.props.name}</span> 
                    </h4> 
                    <div className="categories"> 
                        <p style={{textAlign: "center"}}>{this.props.work}</p> 
                    </div> 
                </div> 
            </div>
        )
    }
}
