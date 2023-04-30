// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Simple interface
interface Parent {

    // Function having only declaratiuon not definition
    function getSlang() external view returns(string memory);
}

// Defining contract
contract Mom is Parent {

    // Declaring internal state variable
    string internal greet;

    // Function definitions of functions declared inside an interface
    function getSlang() public view override returns(string memory) {
        return greet;
    }
}
