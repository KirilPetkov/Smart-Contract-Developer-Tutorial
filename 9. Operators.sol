// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract OperatorDemo {

    // Initializing variables
    uint16 public first = 10;
    uint16 public second = 30;

    // Initializing a variable with addition operator
    uint public addition = first + second; 

    // Initializing a variable with subtraction operator
    uint public subtraction = second - first;

    // Initializing a variable with multiplication operator
    uint public multiplication = first * second;

    // Initializing a variable with quotient using division operator
    uint public division = first / second;

    // Initializing a variable with modulus
    uint public modulus = first % second;

    // Initializing a variable with decrement value
    uint public decrement = --second;

    // Initializing a variable with increment value
    uint public increment = ++first;
}