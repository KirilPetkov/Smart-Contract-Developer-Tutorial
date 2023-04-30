// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Defining calling contract
contract Invoker {

    // declaring a Event named invoked
    event Invoked(uint value, string slang);

    // Defining function to call getValue and getSlang functions
    function testInheritance() public returns(uint, string memory) {

        uint value = 2;
        string memory greet = "Hey!";
        emit Invoked(value, greet); // emitting a event
        return(value,greet);
    }

}
