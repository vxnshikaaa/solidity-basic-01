// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract Blocktrain{
    uint256 public num;

    function add() public{
        num+=1;
    }

    function subtract() public{
        num-=1;
    }

    function update(uint256 _newval) public{
        num = _newval;
    }

}
