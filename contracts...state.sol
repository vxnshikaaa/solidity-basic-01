// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract state{
    uint age; // a state variable
    // age = 10 is incorrect
    // to change the default values of the state variable:
    // use the contracts constructor
    // initialize the variable at declaration
    // use setter function

    constructor() {
        age=10;
    } 

    function setAge() public{
        age = 10;
    }
}