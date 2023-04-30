// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract revertStatementExample {

    // Defining a function to check condition 
    function checkOverflow(uint _num1, uint _num2) public pure returns(string memory, uint) {
        uint sum = _num1 + _num2;
        if (sum < 0 || sum > 255) {
            revert("Overflow Exist");
        }
        else {
            return("No Overflow", sum);
        }
    }

}
