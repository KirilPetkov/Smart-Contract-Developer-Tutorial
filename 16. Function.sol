// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract Storage {

    // declaring state variable of uint type
    uint256 public number;

    constructor() {
        // Initializing the state variable
        number = 1;}

    // Declaring a function to Increment a value 
        function getIncrementedNumber() public view returns(uint) {
            // Local variable Nonc

            uint nonce = number +1;
            return nonce;
        }
}