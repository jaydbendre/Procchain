import React, { Component } from 'react'

export default class Service extends Component {
    render() {
        return (
            <div class="col-sm-4"> 
                <div class="feature-block"> 
                    <h3> 
                        <i class={this.props.icon}></i>
                        {this.props.heading}
                    </h3>
                    <p style ={{fontSize : '15px'}}>
                        {this.props.para}
                    </p> 
                </div> 
            </div>
        )
    }
}
