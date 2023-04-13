// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract LoopControlDemo {

    // Declaring a dynamic array
    uint public lastIndex;
    uint index;

    // Defining a store Function to check the loop Control operation 
    function store() public{
        while(index<5){
            //run a code until while condition is true
            index ++;
            if(index==4){lastIndex=index; // using Break statement to
            // stop the while loop execution
            break; }
        }
    }
}