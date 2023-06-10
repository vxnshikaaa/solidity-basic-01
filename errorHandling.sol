//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract Blocktrain{
    function something() public pure{
        require(10<7, "Weak at Math");
        // if condition is true, the rest of the code will execute
        // otherwise no
    }

    function otherFunc() public pure{
        assert(10!=10);
    }

    function otherSomething() public pure{
        if(10<2){
            revert();
        }
    }
}
