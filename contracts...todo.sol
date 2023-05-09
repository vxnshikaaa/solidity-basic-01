//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract todo{
    
    //todo
    //description of the task
    //status of the task
    //uinque id for each task
    //title 

    enum Status2{
        TODO,        //0
        IN_PROGRESS, //1
        DONE,        //2
        CANCELLED    //3
    }

    // ID => whatever

    mapping (uint256 => Status2) todoStatus;
    mapping (uint256 => string) todoTitle;
    mapping (uint256 => string) todoDescription;

    function addTask(uint256 id, string memory title, string memory description) public {
        todoStatus[id] = Status2.TODO;
        todoDescription[id] = description;
        todoTitle[id] = title;
    }

    function viewTask(uint256 id) public view returns(string memory){
        return todoTitle[id];
        // return todoDescription[id];
    }
}