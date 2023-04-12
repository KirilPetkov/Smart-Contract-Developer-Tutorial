// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract GlobalVariable {

    address public owner;

    constructor() {
        // Using global variable "msg.sender" to get the value of the deployer in this case and set him
        // as the owner of this contract in state variable permanently 

        owner = msg.sender;
    }

}