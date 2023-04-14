// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract ByteToString {

    function convertToString() public pure returns(string memory){
        // initializing bytes
        bytes memory welcome = "Hello World";

        // using string constructor to convert bytes to string
        string memory convertedString = string(welcome);

        // returning converted string output
        return convertedString;
    }
}