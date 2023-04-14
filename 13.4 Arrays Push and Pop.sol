// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract ArraysDS {

    // Declaring state variables of type int array without any fixed size pre defined
    int[] numbers;

    // function to push values to an array
    function store() public returns(int[] memory) {
        numbers.push(5);
        numbers.push(10);
        numbers.push(20);
        return numbers;
    }

    // function to pop last index values from the array
    function deleteLastElement() public returns(int[] memory) {
        numbers.pop();
        return numbers;
    }
}