// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract Blocktrain{
    mapping (uint256 => string) public students;

    // for loop
    function setVal(uint256 _num) public{
        for (uint256 i=0; i<_num; i++){
            students[i] = 'Vanshika';
        }
    }

    //while loop
    function setName(string[] memory _name) public{
        uint256 i = 0;
        while(i<_name.length){
            students[i] = _name[i];
        }
    }

    //do-while loop
    function letsBreak(uint256 _num) public{
        do{
            students[0] = 'vanshika';
        }while(_num<0);
    }

    //break statement
    uint256 public coins;
    function loop() public{
        for(uint256 i=0; i<10; i++){
            if(i==4){
                break;
            }
            coins++;
        }
    }
}
