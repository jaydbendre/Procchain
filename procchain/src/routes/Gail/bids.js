import React, { Component } from 'react';
import { BrowserRouter, Route } from 'react-router-dom';
import ViewBids from '../../components/Gail/Bids/ViewBids';
import BidDetails from '../../components/Gail/Bids/BidDetails';

export default class bids extends Component {
    render() {
        return (
            <BrowserRouter>
                <Route path="/view-bids" component = {ViewBids} />
                <Route path="/bid-details" component = {BidDetails} />
            </BrowserRouter>
        )
    }
}
