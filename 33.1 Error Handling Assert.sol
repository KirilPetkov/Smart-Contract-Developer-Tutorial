// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract assertExpamle {

    // Defining a state variable
    bool result;

    // Defining a function to check condition
    function checkOverflow(uint _a, uint _b) public {

        uint sum = _a + _b;
        assert(sum <= 255);
        result = true;
    }

    // Defining a function to print result of assert statement
    function getResult() public view returns(string memory) {
        if(result == true) {
            return "No Overflow";
        }
        else {
            return "Overflow exist";
        }
    }

}
