// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract ControlDemo {

    // Declaring variables
    uint16 public first = 20;
    uint16 public second = 30;

    function isFirstGreater() public view returns(bool) {
        // Using if condition to evaluate and return is variable "first" a Greater value
        bool result;
        if(first > second){
            result = true;
        }
        return result;
    }
}