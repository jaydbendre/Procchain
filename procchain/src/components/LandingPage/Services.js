import React, { Component } from 'react'
import Service from '../common/LandingPage/Service';
import HorizontalLine from '../common/HorizontalLine';

const services = {
    sections : [
        [
            {
                name : "GAIL Ltd.",
                sectionService : [      
                    {
                        icon : "entypo-cog", 
                        heading : "Settings", 
                        para : "Fifteen no inquiry cordial so resolve garrets as. Impression was estimating surrounded solicitude indulgence son shy."
                    },
                    {
                        icon : "entypo-gauge", 
                        heading : "Dashboard", 
                        para : "On am we offices expense thought. Its hence ten smile age means. Seven chief sight far point any. Of so high into easy."
                    },
                    {
                        icon : "entypo-lifebuoy", 
                        heading : "24/7 Support", 
                        para : "Extremely eagerness principle estimable own was man. Men received far his dashwood subjects new."
                    },
                ]
            }    
        ],
        [
            {
                name : "Supplier",
                sectionService : [
                    {
                        icon : "entypo-cog", 
                        heading : "Settings", 
                        para : "Fifteen no inquiry cordial so resolve garrets as. Impression was estimating surrounded solicitude indulgence son shy."
                    },
                    {
                        icon : "entypo-gauge", 
                        heading : "Dashboard", 
                        para : "On am we offices expense thought. Its hence ten smile age means. Seven chief sight far point any. Of so high into easy."
                    },
                    {
                        icon : "entypo-lifebuoy", 
                        heading : "24/7 Support", 
                        para : "Extremely eagerness principle estimable own was man. Men received far his dashwood subjects new."
                    }
                ]
            },
        ],
        [
            {
                name : "Shipments & Payments",
                sectionService : [
                    {
                        icon : "entypo-cog", 
                        heading : "Settings", 
                        para : "Fifteen no inquiry cordial so resolve garrets as. Impression was estimating surrounded solicitude indulgence son shy."
                    },
                    {
                        icon : "entypo-gauge", 
                        heading : "Dashboard", 
                        para : "On am we offices expense thought. Its hence ten smile age means. Seven chief sight far point any. Of so high into easy."
                    },
                    {
                        icon : "entypo-lifebuoy", 
                        heading : "24/7 Support", 
                        para : "Extremely eagerness principle estimable own was man. Men received far his dashwood subjects new."
                    }
                ]
            },
        ],
    ]
}

export default class Services extends Component {
    render() {
        return (
            <section className="features-blocks" id = "services">
                <div className="container">
                    <h1 style={{textAlign: "center"}}>SERVICES</h1>
                    <br/>
                    {services.sections.map((section, sectionIndex) => {
                        return (
                            <div className="row vspace" key={sectionIndex}>
                                {/* <h3>{this.section}</h3> */}
                                {section.map((service, index) => {
                                    // return <Service
                                    //     {...service}
                                    //     key={index}
                                    // />
                                    return (
                                        <div key = {index}>
                                            <h3 style={{textAlign: "center"}}>{service.name}</h3>
                                            <hr />
                                            {service.sectionService.map((sec, index) => {
                                                return <Service 
                                                    {...sec}
                                                    key = {index}
                                                />
                                            })}
                                        </div>
                                    )
                                })}
                            </div>
                        )
                    })}
                    <HorizontalLine/>
                </div>
            </section>
        )
    }
}
