// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract HashDemo {
    // declaring state variable
    bytes32 initHash;

    constructor() {
        // Invoke hash function
        initHash = tryKeccak256("Hello");
    }

    // Function to generate the hash value
    function tryKeccak256(string memory _value) public pure returns(bytes32 result) {
        // "packing" the string into bytes and then applying the hash function.
        return keccak256(abi.encodePacked(_value));
    }
}