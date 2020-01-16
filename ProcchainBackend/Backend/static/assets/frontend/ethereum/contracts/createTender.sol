pragma solidity ^0.4.17;

contract Tenderfactory {
    uint public tenderCount;
    address[] public tenders;
    address[] temp;
    mapping (address => address) public tenderaddress;

    function createTender(string docHash, string title1, string uploadTime1, string organisation_name1) public {
        Tender tend = new Tender(docHash, title1, uploadTime1, organisation_name1, msg.sender);
        tenders.push(tend);
        // temp[0] = tend;
        tenderaddress[msg.sender] = tend;
        tenderCount++;
        // return temp[0];
    }
    
    function getTenderAddress() public view returns(address) {
        return tenderaddress[msg.sender];
    }

    function tenderCount() public view returns(uint){
        return tenderCount;
    }
}

contract Tender {
    address public manager;
    string private documentHash;
    string public title;
    string private uploadTime;
    string private changeTime;
    string public organisation_name;
    string public deadline;
    struct Bid {
        address vendor_name;
        string date;
        string documentHash;
        uint selectedStatus;
        uint takenBack_status;
        string date_takenBack;
    }
    mapping (address => Bid) public bids;
    struct tempDetails {
        string title;
        address manager;
        string organisation_name;
    }
    
    function bidforTender(string date1, string docHash, uint status1, uint takenBack1, string takenBack_date) public {
        Bid memory temp = Bid({
            vendor_name: msg.sender,
            date: date1,
            documentHash: docHash,
            selectedStatus: status1,
            takenBack_status: takenBack1,
            date_takenBack: takenBack_date
        });
        bids[msg.sender] = temp;
    }
    
    function test(address res) public view returns(Bid) {
        return bids[res];
    }
    
    function Tender(string docHash, string title1, string uploadTime1, string organisation_name1, address manager1) public{
        manager = manager1;
        documentHash = docHash;
        title = title1;
        uploadTime = uploadTime1;
        organisation_name = organisation_name1;
        changeTime = uploadTime1;
    }
    
    modifier restricted(){
        require(msg.sender == manager);
        _;
    }
    
    function changeFile(string docHash, string changeTime1) public restricted{
        documentHash = docHash;
        changeTime = changeTime1;
    }
    
    function editDetails(string title1, string organisation_name1) public restricted{
        title = title1;
        organisation_name = organisation_name1;
    }
    
    function sendDetails() public view returns(tempDetails) {
        tempDetails memory temp = tempDetails({
            title: title,
            manager: manager,
            organisation_name: organisation_name
        });
        
        return temp;
    }
}