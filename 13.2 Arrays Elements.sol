// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract ArraysDS {

    // Declaring state variables of type int array without any fixed size pre defined
    int[] numbers;

    // function to add values to an array
    function store() public returns (int[] memory) {
        numbers = [int(5), 10, -15, -20, 30];
        return numbers;
    }

    // fetching element at specific index from array
    function getElementAtThirdIndex() public view returns(int) {
        // returning int at third index of array i.e -20
        return numbers[3];
    }
}