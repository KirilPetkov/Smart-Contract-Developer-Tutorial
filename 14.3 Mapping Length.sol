// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract MappingDemo {

    // declaring whitelisted mapping of address to value bool type
    mapping(address=>bool) public whitelisted;
    uint count;

    // function to add address to the whitelisted mapping
    function addWhitelistedAddress(address _user) public {
        // adding value by setting _user address as a key
        // in whitelisted mapping with a value of true 
        count;
        whitelisted[_user]=true;
    }

    // function to read value from a whitelisted mapping
    function isWhiteListed(address _user) public view returns(bool) {
        return whitelisted[_user];
    }

    // function to get the count of mapping whitelisted 
    function getWhitelistedMapLength() public view returns(uint) {
        return count;
    }
}