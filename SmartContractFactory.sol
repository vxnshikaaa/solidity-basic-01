//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract Blocktrain{
    superFancyContract[] public arrayOfContract;

    function publishing() public{
        superFancyContract s = new superFancyContract();
        s.superFancyFunction();
        arrayOfContract.push(s);
    }

    function checksOwner(uint256 _number) public view returns (address){
        return arrayOfContract[_number].owner();
    }
}

contract superFancyContract{
    address public owner;
    constructor(){
        owner = tx.origin;
    }
    function superFancyFunction() public{
        // does something super fancy
    }
}
