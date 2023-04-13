// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract OperatorDemo {

    // Initializing state variables
    uint public first = 10;

    // Simple Assignment of value
    function simpleAssignment() public
    {
        first = 20;
    }

    // Addition Assignment of value
    function addTen() public
    {
    first += 10;
    }

    // Substraction Assignment of value
    function subtractTen() public
    {
    first -= 10;
    }

    // Multiplication Assignment of value
    function multiplyByFive() public
    {
    first *= 5;
    }

    // Division Assignment of value
    function addAssignment() public
    {
        first /= 3;
    }

    // Modulus Assignment of value
    function addAssignement() public
    {
        first %= 3;
    }
}