// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract Parent {

    // Declaring internal state variable 
    uint internal num;

    // Defining external function to set value 
    function setValue() external {
        num = 10;
    }
}

// Defining child contract
contract Child is Parent {
    // Defining external function to return value of internal stete variable num
    function getValue() external view returns(uint) {
        return num;
    }
}

// Defining calling contract
contract Invoker {
    // Creating child contract object
    Child child = new Child();

    // Defining function to call
    // setValue and getValue functions
    function testInheritance() public returns(uint) {
        child.setValue();
        return child.getValue();
    }
}