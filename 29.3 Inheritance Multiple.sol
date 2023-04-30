// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract Mom {

    // Declaring internal state variable
    string internal greet;

    // Defining external function to set value
    function getSlang() external returns(string memory) {
        return greet = "hola";
    }
}

// Defining Second Parent contract
contract Dad {

    uint internal dum;

    // Defining external function to retrun value of internal state variable dum
    function setDum() external returns(uint) {
        return dum = 10;
    }
}

// Defining child contract inheriting Two contracts i.e mom and dad
contract Child is Mom, Dad {
    // Defining external function to return value of internal state variable of first parent
    function getMomValue() external view returns(string memory) {
        return greet;
    }

    // Defining external function to return value of internal state variable of second parent
    function getDadValue() external view returns(uint) {
        return dum;
    }
}

// Defining calling contract 
contract Invoker {
    // Creating child contract object
    Child child = new Child();
    // Defining function to call
    // setValue, getNum and getValue functions
    function testInheritance() public returns(uint, string memory) {
        return (child.getDadValue(), child.getMomValue());
    }
}
