import React, { Component } from 'react'
import {BrowserRouter, Route} from 'react-router-dom';

import Gail from '../../components/Gail';

export default class index extends Component {
    render() {
        return (
            <BrowserRouter>
                <Route exact path="/GailOrg" component={Gail} />
            </BrowserRouter>
        )
    }
}
