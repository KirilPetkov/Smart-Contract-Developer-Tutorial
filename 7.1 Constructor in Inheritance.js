// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract Parent {

    // declare state variable
    uint public num;

    constructor(uint _num) {
        num = _num;
    }

}

contract Child is Parent (5) {
    constructor() {}
}