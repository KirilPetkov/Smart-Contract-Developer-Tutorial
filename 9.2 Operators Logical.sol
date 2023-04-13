// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract OperatorDemo {

    // Initializing variables
    bool public first = true;
    bool public second = false;

    // Initializing variable with AND operator result
    bool public and = first && second;

    // Initializing variable with OR operator result
    bool public or = first || second;

    // Initializing variable with NOT operator result
    bool public not =! second;
}