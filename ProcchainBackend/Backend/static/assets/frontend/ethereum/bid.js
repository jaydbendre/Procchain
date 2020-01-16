import web3 from './web3';
import factory from './factory';

import Tender from './build/Tender.json'

let tenderContract;

function getTender(tenderaddr){
    tenderContract = web3.eth.Contract(JSON.parse(Tender.Interface),tenderaddr);
}

async function bidforTender(date, tenderaddr, docHash){
    try{
        const accounts = await web3.eth.getAccounts();
        console.log('Fetched Account Details Successfully....');
    }catch(err){
        console.log('Error in Fetching Account Information....');
        console.log(err.message);
    }

    try{
        await tenderContract.methods.bidforTender(date, docHash).send({
            from: accounts[0]
        });
        console.log('Bidded Successfully....');
    }catch(err){
        console.log('Error in Bidding.....');
        console.log(err.message);
    }
}