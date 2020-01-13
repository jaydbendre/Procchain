import React, { Component } from 'react'
import mem from '../../assets/frontend/images/portfolio-thumb-4.png';

import Member from '../common/LandingPage/Member';
// import HorizontalLine from '../common/HorizontalLine';

const members = {
    sections : [
        [
            {name : "Ayesha Gulrajani", work : "Frontend Developer", image : mem},
            {name : "Harshita Singh", work : "UX/UI Designer", image : mem},
            {name : "Aishwarya Nair", work : "API Developer", image : mem},
        ],
        [
            {name : "Jay Bendre", work : "Database Administrator", image : mem},
            {name : "Sumedh Ghavat", work : "Blockchain Developer", image : mem},
            {name : "Vignesh Pillai", work : "Blockchain Developer", image : mem},
        ],
    ]
}

export default class Team extends Component {
    render() {
        return (
            <section className="portfolio-container" id="team">
                <div className="container">
                    <div className="row">
                        <div className="col-md-12">
                            <h1 style={{textAlign: "center"}}> TEAM </h1>
                            <p style={{textAlign: "center"}}> Meet the people behind ProcChain. </p>
                        </div>
                    </div>
                    {members.sections.map((section, sectionIndex) => {
                        return (
                            <div className="row" key={sectionIndex}>
                                {section.map((member, index) => {
                                    return <Member
                                        {...member}
                                        key={index}
                                    />
                                })}
                            </div>
                        )
                    })}
                </div>
                <br/>
                {/* <HorizontalLine/> */}
            </section>
        )
    }
}
