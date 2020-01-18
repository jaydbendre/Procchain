import web3 from './web3';
import Tenderfactory from './build/Tenderfactory.json';


// const factory = new web3.eth.Contract(JSON.parse(Tenderfactory.interface),'0xbFf4f57bbbc5940d2136fd6802535cdbC3cB8459');

const factory = new web3.eth.Contract(JSON.parse(Tenderfactory.interface),'0x2410b3C469680cfc5087D5e513F51AC76D5D784c');

export default factory;