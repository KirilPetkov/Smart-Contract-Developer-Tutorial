// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract OperatorDemo {

    // Declaring variables
    uint16 public first = 20;
    uint16 public second = 30;

    // Using getter view functions to read from storage
    function getGreaterValue() public view returns(uint) {
        // Using ternary operator to evaluate and return greater value

        uint result = (first > second? first:second);
    }
}