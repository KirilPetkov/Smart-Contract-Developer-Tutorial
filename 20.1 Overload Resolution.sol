// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract OverLoadingDemo {

    // declaring getValue Function with uint8 as a parameter
    function getValue(uint8 _value) public pure returns(uint8 result) {
        result = _value;
    }

    // declaring overloaded getValue Function with uint256 as a parameter
    function getValue(uint256 _value) public pure returns(uint256 result) {
        result = _value;
    }
}