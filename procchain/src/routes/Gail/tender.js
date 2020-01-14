import React, { Component } from 'react';
import {BrowserRouter, Route } from 'react-router-dom';
// import { EditTender, UploadTender, ViewTender } from '../../components/Gail/Tender';
import EditTender from '../../components/Gail/Tender/EditTender';
import UploadTender from '../../components/Gail/Tender/UploadTender';
import ViewTender from '../../components/Gail/Tender/ViewTender';

export default class tender extends Component {
    render() {
        return (
            <BrowserRouter>
                <Route path="/edit-tender" component = {EditTender} />
                <Route path="/upload-tender" component = {UploadTender} />
                <Route path="/view-tender" component = {ViewTender} />
            </BrowserRouter>
        )
    }
}
