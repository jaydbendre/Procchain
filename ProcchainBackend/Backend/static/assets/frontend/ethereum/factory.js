import web3 from './web3';
import Tenderfactory from './build/Tenderfactory.json';


const factory = new web3.eth.Contract(JSON.parse(Tenderfactory.interface),'0xbFf4f57bbbc5940d2136fd6802535cdbC3cB8459');

export default factory;