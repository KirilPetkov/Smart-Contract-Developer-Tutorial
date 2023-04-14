// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract HelloWorld {

    // greet variable is of type string with "" quotes
    string public greet = "Hello World!";

    // welcome variable is of type string with '' quotes
    string public welcome = 'Hello World!';
    string public word;

    // using funciton to setString
    function setString() public{word = "hey";}

    // setting string word by taking new string as parameter in function
    function updateString(string memory _word) public {
        word = _word;}
}