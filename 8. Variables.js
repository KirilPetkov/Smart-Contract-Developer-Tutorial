// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract Storage {

    // declare state variable of uint type
    uint256 public number;
    constructor() {
        // Initializing the state variable
        number = 1;
    }
}