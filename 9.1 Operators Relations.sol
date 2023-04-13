// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract OperatorDemo {

    // Initializing variables
    uint16 public first = 10;
    uint16 public second = 30;

    // Initializing a variable with bool equal operator result
    bool public equal = first == second;

    // Initializing a variable with bool not equal operator result
    bool public not_equal = first != second;

    // Initializing a variable with bool greater than operator result
    bool public greater = second > first;

    // Initializing a variable with bool less than operator result
    bool public less = first < second;

    // Initializing a variable with bool greater than equal to operator result
    bool public greaterThanEqualTo = second >= first;

    // Initializing a variable bool less than equal to operator result
    bool public lessThanEqualTo = first <= second;
}