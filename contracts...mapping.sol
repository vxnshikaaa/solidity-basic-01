// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract mappingExample{

    mapping(address => string) public moods;
    // access someone's mood value
    // moods[0x24hat6atyag7jk] => string

    function getMood(address user) public view returns(string memory){
        return moods[user];
    }

    function setMood(string memory mood) public{
        moods[msg.sender] = mood;
    }

}