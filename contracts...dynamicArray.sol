// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract Array{
    uint[] public arr;

    function pushEle(uint ele) public {
        arr.push(ele);
    }

    function length() public view returns(uint){
        return arr.length;
    }

    function pop() public{
        arr.pop();
    }
}