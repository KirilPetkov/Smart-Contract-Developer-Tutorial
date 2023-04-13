// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract ControlDemo {

    // Declaring variables
    uint16 public first = 20;
    uint16 public second = 30;

    function isFirstGreater() public view returns(uint) {
        // Using if else condition to evaluate and return greater value
        uint result;
        if(first>second){
            result = first;
        }else{
            result = second;
        }
        return result;
    }
}