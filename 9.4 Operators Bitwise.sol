// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract OperatorDemo {

    // Declaring variables
    uint16 public first = 20;
    uint16 public second = 30;

    // Initializing a variables to '&' operator value
    uint16 public and = first & second;

    // Initializing a variable to '|' operator value 
    uint16 public or = first | second;

    // Initializing a variable to '^' operator value
    uint16 public xor = first ^ second;

    // Initializing a variable to '~' operator value
    uint16 public not = ~second;

    // Initializing a variable to '<<' operator value
    uint16 public leftShift = first << second;

    // Initiazlizing a variable to '>>' operator value
    uint16 public rightShift = second >> first;
}