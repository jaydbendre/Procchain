pragma solidity ^0.4.17;

contract Tenderfactory {
    uint public tenderCount;
    address[] public tenders;
    address[] temp;
    mapping (address => address) public tenderaddress;
    
    struct TenderDetails {
        address tenderAddress;
        uint location;
        string upload_date;
        address selectedBid;
    }
    
    // For storing all the Tenders
    mapping (address => uint) public allTendersmap;
    TenderDetails[] public allTenderslist;
    
    function Tenderfactory() public{
        tenderCount = 0;
    }

    function createTender(string docHash, string title1, string uploadDate1, string deadline, uint loc, uint creator) public {
        Tender tend = new Tender(docHash, title1, uploadDate1, deadline, loc, msg.sender, creator);
        tenders.push(tend);
        
        // Appending the created tender in Global List
        TenderDetails memory tdlist = TenderDetails({
            tenderAddress: tenders[tenderCount],
            location: loc,
            upload_date: uploadDate1,
            selectedBid: 0
        });
        
        // Stores all Tenders
        allTenderslist.push(tdlist);
        
        // Stores mapping of Tenders for quick search
        allTendersmap[tdlist.tenderAddress] = tenderCount;
        
        // Stores the latest Tender Address of the user
        tenderaddress[msg.sender] = tdlist.tenderAddress;
        
        // Count of Tender uploaded by GAIL
        tenderCount++;
    }
    
    function getTenderAddress() public view returns(address) {
        return tenderaddress[msg.sender];
    }

    function tenderCount() public view returns(uint){
        return tenderCount;
    }
    
    // Update TenderList after Selection of Bid
    // No need of this function
    function selectedBid(address tenderaddr, address bidselect) public{
        uint loc = allTendersmap[tenderaddr];
        TenderDetails storage tempTender = allTenderslist[loc];
        tempTender.selectedBid = bidselect;
    }
    
    // Returns all Tenders
    function allTenders() public view returns(TenderDetails[]){
        return allTenderslist;
    }
}

contract Tender {
    uint public creator;
    address public manager;
    string private tenderdocumentHash;
    string public title;
    string public uploadDate;
    string public changesDate;
    string public deadline;
    uint public finalisedAmount;
    uint public is_bid_selected;
    uint location;
    uint tender_status;
    uint selected_bid_id;
    uint approved_by;
    // Storing BidCount
    uint public bidCount;
    // Storing payCount
    uint private payCount;
    Payments[] private payrecord;
    
    // Store approved Bid Details
    Bid public bid_details;
    
    // Storing and Quick Search Bid
    // 0th position is used for not bid status so map starts from 1 and array location starts from 0
    mapping (address => uint) public bidsMap;
    // For storing BidsdocumentHash
    mapping(uint => string) private bidsdocumentHash;
    Bid[] public allBids;
    
    // Bid Details
    struct Bid {
        uint id;
        uint creator;
        address tenderAddress;
        string vendor_name;
        address initiated_by;
        string initiated_at;
        uint takenBack_status;
        string date_takenBack;
        uint bidAmount;
    }
    
    // Payment Details
    struct Payments {
        uint payment_id;
        uint amount;
        uint transaction_id;
        address sent_by;
        string sent_at;
        address received_by;
        string received_at;
        uint acknowledge;
        uint acknowledge_by;
        uint sender_id;
    }
    
    // Model for sending Tender Details
    struct tempDetails {
        uint selected_bid_id;
        uint is_bid_selected;
        uint location;
        string upload_date;
        uint tender_status;
        string deadline;
        string tender_file_hash;
        Bid bid_details;
        // string vendor_name;
        // address bid_initiated_by;
        // string bid_file_hash;
        // string initiated_at;
        // uint bid_amount;
    }
    
    function bidforTender(address tenderAddr, string vendor_nm, address initiatedby, string initiatedat, string docHash, uint amt, uint creator) public returns(uint) {
        // For avoiding Redo of Bid
        require(bidsMap[msg.sender] != 0);
        
        bidCount++;
        Bid memory temp = Bid({
            creator: creator,
            id: bidCount,
            tenderAddress: tenderAddr,
            vendor_name: vendor_nm,
            initiated_by: initiatedby,
            initiated_at: initiatedat,
            bidAmount: amt,
            takenBack_status: 0,
            date_takenBack: ""
        });
        bidsdocumentHash[bidCount] = docHash;
        allBids.push(temp);
        return bidCount;
    }
    
    
    function Tender(string docHash, string title1, string uploadDate1, string deadline1, uint loc, address manager1, uint creator) public{
        creator = creator;
        manager = manager1;
        tenderdocumentHash = docHash;
        title = title1;
        uploadDate = uploadDate1;
        changesDate = uploadDate1;
        deadline = deadline1;
        finalisedAmount = 0;
        is_bid_selected = 0;
        bidCount = 0;
        location = loc;
        tender_status = 0;
        selected_bid_id = 0;
        payCount = 0;
        approved_by = 0;
    }
    
    modifier restricted(){
        require(msg.sender == manager);
        _;
    }
    
    // For Tender
    function changeDocFile(string docHash, string changeDate1) public restricted{
        tenderdocumentHash = docHash;
        changesDate = changeDate1;
    }
    
    // For Tender
    function editDetails(string title1, string changeDate, string deadline1) public restricted{
        title = title1;
        changesDate = changeDate;
        deadline = deadline1;
    }
    
    
    // Sending Tender Details
    function sendTenderDetails() public view returns(tempDetails) {
        tempDetails memory temp = tempDetails({
            selected_bid_id: selected_bid_id,
            is_bid_selected: is_bid_selected,
            location: location,
            upload_date:uploadDate,
            tender_status:tender_status,
            deadline:deadline,
            tender_file_hash:tenderdocumentHash,
            bid_details: bid_details
        });
        
        return temp;
    }
    
    // Edit Bids
    function editBid(uint id, uint bidamt, uint take_back, string date1) public {
        Bid storage tempBid = allBids[id-1];
        
        // Owner Editing Bids
        require(msg.sender == tempBid.initiated_by);
        
        tempBid.bidAmount = bidamt;
        tempBid.takenBack_status = take_back;
        tempBid.date_takenBack = date1;
    }
    
    // Withdraw Bid
    function withdrawBid(uint id, string withdraw_Date) public {
        Bid storage tempBid = allBids[id-1];
        require(msg.sender == tempBid.initiated_by);
        
        tempBid.takenBack_status = 1;
        tempBid.date_takenBack = withdraw_Date;
    }
    
    // Change Bid document
    function changeBidDoc(uint id, string docHash) public {
        Bid storage tempBid = allBids[id-1];
        
        // Owner Changing Bid document
        require(msg.sender == tempBid.initiated_by);
        
        bidsdocumentHash[id] = docHash;
    }
    
    // Select/Approve Bid
    function selectBid(uint id, uint approver) public {
        Bid storage tempBid = allBids[id-1];
        require(msg.sender == manager);
        selected_bid_id = id;
        finalisedAmount = tempBid.bidAmount;
        is_bid_selected = 1;
        bid_details = tempBid;
        approved_by = approver;
    }
    
    // Payment
    function payment(uint amount, uint trans_id, string send_at, uint sender_id) public{
        payCount++;
        Payments memory pay = Payments({
            payment_id: payCount,
            amount: amount,
            transaction_id: trans_id,
            sent_by: msg.sender,
            sent_at: send_at,
            received_by: 0,
            received_at: "",
            acknowledge: 0,
            acknowledge_by: 0,
            sender_id: sender_id
        });
        payrecord.push(pay);
    }
    
    // Payment Acknowledge
    function payReceive(uint id, string received_at, uint acknowledger_id) public{
        Payments storage payack = payrecord[id-1];
        payack.received_by = msg.sender;
        payack.received_at = received_at;
        payack.acknowledge = 1;
        payack.acknowledge_by = acknowledger_id;
    }
    
    // Send PaymentHistory
    function paymentHistory() public view returns(Payments[]){
        return payrecord;
    }
    
    // Return all bids for display
    function allBids() public view returns(Bid[]){
        return allBids;
    }
}