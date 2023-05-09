// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract local {
    string variable = "hi"; // state variable

    function store() pure public returns (uint){
        uint age = 10; // local variable (variables in function body , kept on stack and not on storage)
        // string memory name = "vanshika"; // local variable: we use the memory keyword because
                                        // by default string name is stored on the contract storage.
        return age;

    }
}