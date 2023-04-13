// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract LoopControlDemo {

    // Declaring a dynamic array
    uint index;
    uint[] store;

    // Defining a skipAndStore Function to check the Loop Control Operation
    function skipAndStore() public{
        while(index<5){
            index++;
            if(index==2){
                // Using Continue statement to skip storage of the 2 
                // index in array
                continue;
            }
            store.push(index);
        }
    }
}