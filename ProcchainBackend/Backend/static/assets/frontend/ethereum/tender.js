import web3 from './web3';
import factory from './factory';

async function createTender(title, close_date, location){
    try{
        const accounts = await web3.eth.getAccounts();
        console.log('Account Information Successful...');
    }catch(err){
        console.log('Error in getting Account Information.....');
        console.log(err.message);
    }
    
    try{
        await factory.methods.createTender(title, close_date, location).send({
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