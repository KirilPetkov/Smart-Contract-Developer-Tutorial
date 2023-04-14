// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract Storage {

    // declaring state variable of uint type
    uint256 public number;

    constructor() {
        // Invoking a getIncrementNumber Function
        incrementedNumberBy(1);}

    // Declaring a function to Increment a value by parameter provided
        function incrementedNumberBy(uint _num) public view returns(uint) {
            // Local variable Nonce
            uint nonce = number + _num;

            // return statement to return final output of number
            return nonce;
        }
}