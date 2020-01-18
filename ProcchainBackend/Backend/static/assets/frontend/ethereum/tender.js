// import { web3 } from './web3';
// import { factory } from './factory';


import Web3 from 'web3';
const HDWalletProvider = require('truffle-hdwallet-provider');

let web3;

try{
    if(typeof window !== 'undefined' && typeof window.web3 !== 'undefined'){
        web3 = new Web3(Web3.givenProvider);
    }
} catch{
    const provider = new Web3.providers.HttpProvider('https://rinkeby.infura.io/v3/775d88cc749a4ef1bff9cada81a065d3');
    web3 = new Web3(provider);
}

import Tenderfactory from './build/Tenderfactory.json';


// const factory = new web3.eth.Contract(JSON.parse(Tenderfactory.interface),'0xbFf4f57bbbc5940d2136fd6802535cdbC3cB8459');

const factory = new web3.eth.Contract(JSON.parse(Tenderfactory.interface),'0x2410b3C469680cfc5087D5e513F51AC76D5D784c');




async function createTender(title, close_date, location){
    try{
        const accounts = await web3.eth.getAccounts();
        console.log('Account Information Successful...');
    }catch(err){
        console.log('Error in getting Account Information.....');
        console.log(err.message);
    }
    
    try{
        // await factory.methods.createTender(title, close_date, location).send({
        //     from: accounts[0]
        // });
        await factory.methods.createTender("docHash", "title", "uploadDate", "deadline", 1, 1).send({
            from: accounts[0]
        });
        console.log('Deployed Successfully....');
    }catch(err){
        console.log('Error in Creating Tender...');
        console.log(err.messsage);
    }
    
    try{
        const tenderAddress = await factory.methods.getTenderAddress().call({
            from: accounts[0]
        });
        console.log(tenderAddress);
    }catch(err){
        console.log('Error in getting Tender Address....');
        console.log(err.message);
    }
}