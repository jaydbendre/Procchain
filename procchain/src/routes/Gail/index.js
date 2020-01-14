import React, { Component } from 'react'
import {BrowserRouter, Route} from 'react-router-dom';

import Gail from '../../components/Gail';
import AdminOnboardGailCentre from '../../components/Gail/Admin/OnboardGailCentre';
import AdminOnboardGailEmployees from '../../components/Gail/Admin/OnboardGailEmployees';
import TenderRoutes from './tender';
import BidRoutes from './bids';

export default class index extends Component {
    render() {
        return (
            <div>    
                <BrowserRouter>
                    <Route exact path="/GailOrg" component={Gail} />
                    <Route exact path="/admin/onboard-gail-centre" component={AdminOnboardGailCentre} />
                    <Route exact path="/admin/onboard-gail-employees" component={AdminOnboardGailEmployees} />
                </BrowserRouter>
                <TenderRoutes />
                <BidRoutes />
            </div>
        )
    }
}