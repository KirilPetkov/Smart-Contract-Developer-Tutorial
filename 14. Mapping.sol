// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract MappingDemo {

    // declaring whitelisted mapping of address to value bool type 
    mapping(address=>bool) public whitelisted;
}