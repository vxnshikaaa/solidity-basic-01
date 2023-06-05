//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract main{

    address second;
    function setAddress(address _second) public{
        second = _second;
    }

    function callFunction() public returns (string memory){
        secondSmartContract b = new secondSmartContract();
        return b.doSomething();
    }
}

contract secondSmartContract{
    function doSomething() external pure returns(string memory){
        return "hi from another contract";
    }

}
