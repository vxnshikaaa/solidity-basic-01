//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract myBank{
    struct Account{
        address owner;
        uint256 balance;
        uint256 accountCreatedTime;
    }

    mapping(address => Account) public RakshaChitFund;

    event balanceAdded(address owner, uint256 balance, uint256 timestamp);
    event withdrawalDone(address owner, uint256 balance, uint256 timestamp);

    modifier minAmt(){
        require(msg.value >= 1 ether, "Doesn't follow minimum criteria");
        _;
    }

    function accCreate()
    public 
    payable
    minAmt{
        RakshaChitFund[msg.sender].owner = msg.sender;
        RakshaChitFund[msg.sender].balance = msg.value;
        RakshaChitFund[msg.sender].accountCreatedTime = block.timestamp;

        emit balanceAdded(msg.sender, msg.value, block.timestamp);
    }

    //depositing

    function deposit()
    public 
    payable
    minAmt{
        RakshaChitFund[msg.sender].balance += msg.value;
        emit balanceAdded(msg.sender, msg.value, block.timestamp);
    } 

    // withdrawal

    function withdraw()
    public 
    payable {
        //address.transfer(amount to transfer)
        payable(msg.sender).transfer(RakshaChitFund[msg.sender].balance);
        RakshaChitFund[msg.sender].balance = 0; // clears the balance

        emit withdrawalDone(msg.sender, RakshaChitFund[msg.sender].balance, block.timestamp);
    }
}
