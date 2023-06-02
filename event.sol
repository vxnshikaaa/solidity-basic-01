//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract Blocktrain{

    struct Student{
        string name;
        string email;
        uint256 contactno;
        uint256 rollno;
        uint256 timestamp;
    }

    mapping(uint256 => Student) public StudentDatabase;
    uint256 rollno = 1;

    event studentAdded(
        string name,
        uint256 rollno,
        uint256 timestamp
    );

    function addStudent(
        string memory _name,
        string memory _email,
        uint256 _contactno
    ) public {
        StudentDatabase[rollno].name = _name;
        StudentDatabase[rollno].email = _email;
        StudentDatabase[rollno].contactno = _contactno;
        StudentDatabase[rollno].rollno = rollno;
        StudentDatabase[rollno].timestamp = block.timestamp;

        emit studentAdded(_name, rollno, block.timestamp);

        rollno += 1;
    }
}
