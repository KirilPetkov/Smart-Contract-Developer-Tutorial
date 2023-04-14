// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract StringToByte {

    function convertToBytes() public pure returns(bytes memory) {
        string memory greet = "hello";
        // using bytes constructor

        bytes memory stringByte = bytes(greet);
        return stringByte;
    }

    // getting length of string by converting to bytes
    function getStringLength(string memory _word) public pure returns(uint256) {
        
        // using bytes constructor
        bytes memory stringByte = bytes(_word);
        return stringByte.length;
    }
}