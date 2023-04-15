// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract Storage {

    // State variable are permanently store on storage
    string public greet = "Hello World!";

    // Access externally Marked function inside the contract
    function invoke() public view returns(string memory) {
        // Using this keyword to access external function inside the contract
        return this.sayHi("Yo!");
    }

    // local calldata variable _slang stored on Immutable calldata
    function sayHi(string calldata _slang) external pure returns(string memory) {
        return _slang;
    }
}