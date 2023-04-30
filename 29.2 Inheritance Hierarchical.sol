// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract Parent {

    // Declaring internal state variable 
    uint internal num;
    string internal greet;

    // Defining external function to set value
    function setValue() external {
        num = 10;
    }

    // Defining external function to set value
    function getSlang() external returns(string memory) {
        return greet = "hola";
    }

}

// Defining child one contract
contract ElderChild is Parent {
    
    uint internal dum;

    // Defining external function to return value of internal state variable num
    function getNum() external returns(uint) {
        dum = num + 2;
        return num;
    }
}

// Defining Grandchild contract inheriting child 
contract YoungChild is Parent {

    // Defining external function to return value of internal state variable num
    function getValue() external view returns(string memory) {
        return greet;
    }
}

// Defining calling contract
contract Invoker {

    // Creating first child contract object
    ElderChild echild = new ElderChild();
    // Creating second child contract object
    YoungChild ychild = new YoungChild();

    // Defining function to call
    // setValue, getNum and getValue functions
    function testInheritance() public returns(uint, string memory) {
        return (echild.getNum(), ychild.getValue());
    }
}
