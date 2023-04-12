// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract Sample {

    // Declaring state variable
    string holder;

    // Creating a constructor
    // initialize the state variable value "holder"
    constructor() {
        holder = "Solidity";
    }

    // function to get holder value
    // return the value of 'holder'
    function getHolder() public view returns(string memory) {
        return holder;
    }

}