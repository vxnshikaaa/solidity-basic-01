

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract Identity{
    string name;
    uint age;

    constructor () public {
        name="vanshika";
        age=19;
    }

    function getName() view public returns (string memory){
        return name;
    }

    function getAge() view public returns (uint){
        return age;
    }

    function setAge() public{
        age=age+1;
    }


}