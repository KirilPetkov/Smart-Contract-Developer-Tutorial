// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract Storage {

    // State variable are permanently store on storage
    string public greet = "Hello World!";

    // local memory variable _slang stored on memory
    function sayHi(string memory _slang) public pure returns(string memory) {
        return _slang;
    }
}