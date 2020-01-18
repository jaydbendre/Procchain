const HDWalletProvider = require('truffle-hdwallet-provider');
const Web3 = require('Web3');

const TenderPath = require('./build/Tenderfactory.json');

const provider = new HDWalletProvider(
    'parent vessel once increase share mixture nasty spoon autumn story fog before',
    'https://rinkeby.infura.io/v3/775d88cc749a4ef1bff9cada81a065d3',
);

const web3 = new Web3(provider);

const deploy = async() => {
    try{
        const accounts = await web3.eth.getAccounts();
        console.log('Account details fetched Successfully....');

        const result = await new web3.eth.Contract(JSON.parse(TenderPath.interface)).deploy({data: TenderPath.bytecode}).send({ from: accounts[0], gas:'3000000' });

        console.log('Contract deployed to : ', result.options.address);

    }catch {
        console.log('Error in deploying the contract');
    }
}

deploy();
