// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract ByteToString {

    // define a function
    function convertToBytes() public pure returns(bytes memory) {
        string memory greet = "hello";
        // using bytes constructor
        bytes memory stringByte = bytes(greet);
        return stringByte;
    }

    // convertToBytes overloaded function getting length of string by converting to bytes
    function convertToBytes(string memory _word) public pure returns(uint256) {
        // using bytes constructor
        bytes memory stringByte = bytes(_word);
        return stringByte.length;
    }
}