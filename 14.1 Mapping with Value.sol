// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract MappingDemo {

    // declaring whitelsited mapping of address to value bool type
    mapping(address=>bool) public whitelsited;

    // function to add address to the whitelisted mapping
    function addWhitestedAddress(address _user) public {
        
        // adding value by setting _user address as a key
        // in whitelisted mapping with a value of true 
        whitelsited[_user]=true;
    }
}