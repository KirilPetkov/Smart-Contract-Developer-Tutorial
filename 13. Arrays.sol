// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract ArraysDS {

    // Declaring state variables of type uint array with fixed size of 5
    uint[5] numbers;

    // function to add values to an array
    function store() public returns (uint[5] memory) {
        numbers = [uint(5), 10, 15, 20, 30];
        return numbers;
    }
}