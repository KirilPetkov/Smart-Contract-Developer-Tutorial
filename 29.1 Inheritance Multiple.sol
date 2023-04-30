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

contract Child is Parent {
    uint internal dum;
    // Defining external function to return value of internal state variable num
    function getNum() external returns(uint) {
        dum = num + 2;
        return num;
    }
}
// Defining Grandchild contract inheriting child
contract Grandchild is Child {
    // Defining external function to return value of internal state variable num
    function getValue() external view returns(uint) {
        return dum;
    }
}

// Defining calling contract
contract Invoker {
    // Creating Grandchild contract object
    Grandchild gchild = new Grandchild();

    // Defining function to call
    // setValue, getNum and getValue functions
    function testInheritance() public returns(uint) {
        gchild.setValue();
        gchild.getNum();
        return gchild.getValue();
    }
}
