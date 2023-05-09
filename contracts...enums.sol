//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract enumsExample{
    // enums are a way to restrict a variable's value
    // to a predefined set of possible options
    // while maintaining human readability and ease of use

    enum Status{
        TODO,
        IN_PROGRESS,
        DONE,
        CANCELLED
    }

    mapping(uint256 => Status) todos;

    function addTask(uint256 id) public{
        todos[id] = Status.TODO;
    }

    function markTaskInProgress(uint256 id) public{
        todos[id] = Status.IN_PROGRESS;
    }

    function getStatus(uint256 id) public view returns(Status){
        return todos[id];
    }



}