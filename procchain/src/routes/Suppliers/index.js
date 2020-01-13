import React, { Component } from 'react'
import {BrowserRouter, Route} from 'react-router-dom';

import Supplier from '../../components/Suppliers';

export default class index extends Component {
    render() {
        return (
            <BrowserRouter>
            
                <Route exact path="/Supplier" component={Supplier} />

            </BrowserRouter>
        )
    }
}
