//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract Block{
    address public owner;

    constructor(){
        owner = msg.sender;
    }
    
    uint256 coins;
    function add() public{
        require(coins<=3, "too many coins!!");
        coins++;
    }

    modifier onlyOwner(){
        require(msg.sender==owner, "the sender is not the owner");
        _;
    }

    function subtract() public onlyOwner{
        coins--;
    }
}
