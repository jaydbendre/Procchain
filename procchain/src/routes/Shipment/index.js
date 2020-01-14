import React, { Component } from 'react';
import {BrowserRouter, Route} from 'react-router-dom';

import Shipment from '../../components/Shipment';

export default class index extends Component {
    render() {
        return (
            <BrowserRouter>
                <Route exact path="/shipment" component={Shipment} />
            </BrowserRouter>
        )
    }
}
