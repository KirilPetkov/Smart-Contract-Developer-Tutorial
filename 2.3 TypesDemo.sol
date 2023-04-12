// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract TypesDemo {

    // Initializing Bool variable
    bool public boolean = false;

    // Initializing Integer variable
    int32 public _integer = -2023;

    // Initializing String variable
    string public _string = "HelloWorld";

    // Initializing Byte variable
    bytes1 public _bytes = "h";

    // Defining an enumerator
    enum Color { YELLOW, RED, Blue }

    // Defining a function to return values stored in an enumerator
    function getEnum() public pure returns(Color) {
        return Color.RED;
    }

}
