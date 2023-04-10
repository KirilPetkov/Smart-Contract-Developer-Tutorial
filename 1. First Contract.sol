// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract MyContract {

    string value;

//The contract has a single variable "value" which is initialized to "myValue" in the constructor. 
//There are two functions defined: "get" and "set".

    constructor() public {
        
        value = "myValue";
    }

    //The "get" function is a read-only function that returns the value of the "value" variable. 
    //The "set" function is a public function that allows you to set the value of the "value" variable.

    function get() public view returns(string memory) {
        return value;
    }

    function set(string memory _value) public {
        value = _value;
    }

}
