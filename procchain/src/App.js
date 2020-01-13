import React from 'react';
// import logo from './logo.svg';
// import './App.css';

import LandingPage from './routes/LandingPage';
import Auth from './routes/Auth';
import Gail from './routes/Gail';
import Supplier from './routes/Suppliers';
import Shipment from './routes/Shipment';

function App() {
  return (
    <div>
      
      <LandingPage />
      <Auth />
      <Gail />
      <Supplier />
      <Shipment />
      
    </div>
  );
}

export default App;
