// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Simple interface
abstract contract Parent {

    // Functions having only declaration not definition
    function getSlang() external virtual returns(string memory);

    // declaring a function and it's defination
    function getValue() public pure returns(uint) {
        return 2;
    }
}

// Defining contract
contract Mom is Parent {

    // Declaring internal state variable
    string internal greet;

    // Function definitions of functions declared inside an interface
    function getSlang() external override returns (string memory) {
        greet = "hola";
        return greet;
    }
}

// Defining calling contract 
contract Invoker {

    // Creating child contract object
    Mom mom = new Mom();

    // Defining function to call
    // getValue and getSlang functions
    function testInheritance() public returns(uint, string memory) {
        return(mom.getValue(),mom.getSlang());
    }
}
