// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract getset{
    uint age = 10;

    function getter() public view returns (uint){
        return age;
    }

    function setter(uint newAge) public {
        age = newAge;
    }
    // setter function creates a transaction and costs gas because it changes the blockchain
    // declaring a public state variable automatically creates a getter function.
    // by default variable visibility is private.
    

}