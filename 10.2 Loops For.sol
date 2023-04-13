// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract LoopDemo {

    // Declaring a dynamic array
    uint[] store;

    // Defining a forLoop Function to check the while loop operator
    function forLoop() public returns(uint[] memory) {
        // Here we initialise i to 0, then given a condition to evaluate
        // and lastly we had given a iteration with increamenting nature i.e i++


        for (uint i=0;i<5;i++) {
            store.push(i);
        }
        return store;
    }
}