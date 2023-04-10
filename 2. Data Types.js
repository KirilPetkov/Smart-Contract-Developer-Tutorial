// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract MyContract {

    string public stringValue = "myString";
    // This is a data type that represents a sequence of characters, such as a word or a phrase. 
    // In this code, the "stringValue" variable is a public string variable that is set to the value "myString".
    
    bool public myBool = true;
    // This is a data type that represents a boolean value, which can be either true or false. 
    //In this code, the "myBool" variable is a public boolean variable that is set to the value true.

    int public myInt = -1;
    // This is a data type that represents a signed integer, which can be either positive or negative. 
    // In this code, the "myInt" variable is a public integer variable that is set to the value -1.

    uint public myUint = 1;
    // This is a data type that represents an unsigned integer, which can only be positive. 
    // In this code, the "myUint" variable is a public unsigned integer variable that is set to the value 1.

    uint8 public myUint8 = 8;
    // This is a data type that represents an unsigned integer with 8 bits of storage, which can have values ranging from 0 to 255. 
    // In this code, the "myUint8" variable is a public unsigned 8-bit integer variable that is set to the value 8.

    uint256 public myUint256 = 99999;
    // This is a data type that represents an unsigned integer with 256 bits of storage, which can have values ranging from 0 to 2^256 - 1. 
    // In this code, the "myUint256" variable is a public unsigned 256-bit integer variable that is set to the value 99999.

}