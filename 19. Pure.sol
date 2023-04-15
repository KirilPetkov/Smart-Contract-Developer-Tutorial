// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract ByteToString {

    function convertToBytes() public pure returns(bytes memory) {
        string memory greet = "hello";
        // using bytes constructor
        bytes memory stringByte = bytes(greet);
        return stringByte;
    }
}