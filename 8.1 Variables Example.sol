// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract Storage {

    // declare state variable of uint type
    uint256 public numbers;

    constructor() {
        // Initializing the state variable
        numbers = 1;

    }

    function getIncreamentedNumber() public view returns(uint) {
        // Local variable Nonce
        uint nonce = numbers +1;
        return nonce;
    }
}
