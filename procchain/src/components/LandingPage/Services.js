import React, { Component } from 'react'
import Service from '../common/LandingPage/Service';
import HorizontalLine from '../common/HorizontalLine';

const service = {
    sections : [
        [
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
        ],
        [
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
        ],
        [
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
                    {service.sections.map((section, sectionIndex) => {
                        return (
                            <div className="row vspace" key={sectionIndex}>
                                {section.map((service, index) => {
                                    return <Service
                                        {...service}
                                        key={index}
                                    />
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
