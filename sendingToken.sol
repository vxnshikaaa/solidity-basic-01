//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract Blocktrain{
    address public owner;
    uint256 public balance;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Can't touch this");
        _;
    }

    receive() external payable {
        balance += msg.value;
    }

    function withdraw (address to, uint256 _value) public onlyOwner payable{
        require(_value <= balance, "Insufficient funds!");
        payable (to).transfer(_value);
    }

    function withdrawERC20(IERC20 token, address to, uint256 _value) public onlyOwner payable {
        uint256 erc20balance = token.balanceOf(address(this));
        require(_value <= erc20balance, "Insufficient funds!");
        token.transfer(to, _value);
    }
}
