// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract Storage {

    // declaring state variable of uint type
    uint256 public number;
    address public owner;

    constructor() {
        // setting the owner address with the value of deployer
        owner = msg.sender;

        // Invoking a getIncrementNumber Function
        incrementedNumberBy(1);
    }

    //modifier without parameter to check owner before execution
    modifier onlyOwner() {
        require(owner==msg.sender, "not a owner"); _;
    }

    // modifier with parameter to validate function parameter
    modifier isGreaterThanZero(uint _num) {
        require(_num > 0); _;
    }

    // Declaring a function to Increment a value by parameter provided
    function incrementedNumberBy(uint _num) public view onlyOwner isGreaterThanZero(_num) returns(uint) {
        // Local variable Nonce
        uint nonce = number + _num;

        // return statement to return final output of number
        return nonce;
    }
}