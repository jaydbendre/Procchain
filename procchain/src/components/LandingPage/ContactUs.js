import React, { Component } from 'react'

export default class ContactUs extends Component {
    render() {
        return (
            <section className="footer-widgets" id = "contactUs"> 
                <div className="container"> 
                    <div className="row"> 
                        <div className="col-sm-6"> 
                            <a href="/"> <img src="../../assets/frontend/images/logo@2x.png" width="100" alt="logo" /> </a> 
                            <p>
                                Vivamus imperdiet felis consectetur onec eget orci adipiscing nunc. <br />
                                Pellentesque fermentum, ante ac interdum ullamcorper.
                            </p> 
                        </div> 
                        <div className="col-sm-3"> 
                            <h5>Address</h5> 
                            <p>Loop, Inc. <br />795 Park Ave, Suite 120 <br />San Francisco, CA 94107</p> 
                        </div> 
                        <div className="col-sm-3"> 
                            <h5>Contact</h5> 
                            <p>
                                Phone: +1 (52) 2215-251 <br />
                                Fax: +1 (22) 5138-219 <br />
                                info@laborator.al
                            </p> 
                        </div> 
                    </div> 
                </div> 
            </section>
        )
    }
}
