import Web3 from 'web3';
const HDWalletProvider = require('truffle-hdwallet-provider');

let web3;

try{
    if(typeof window !== 'undefined' && typeof window.web3 !== 'undefined'){
        web3 = new Web3(Web3.givenProvider);
    }
} catch(err){
    const provider = new Web3.providers.HttpProvider('https://rinkeby.infura.io/v3/775d88cc749a4ef1bff9cada81a065d3');
    web3 = new Web3(provider);
}

export default web3;
