// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract LoopDemo {

    // Declaring a dynamic array
    uint[] store;

    // Declaring state variable
    uint8 index = 0;

    // Defining a whileLoop Function to check the while loop operator
    function whileLoop() public returns(uint[] memory) {
        // loop run until this condition evaluates to true

        while(index < 5) {
            index ++;
            store.push(index);
        }
        return store;
    }
}