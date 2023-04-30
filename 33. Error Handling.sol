// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract Storage {

    // declaring state variable of uint type 
    uint256 public number; 
    address public owner;
    address public admin;

    constructor() {

        // setting the owner address with the value of deployer 
        owner = msg.sender;

        // Invoking a getIncrementNumber Function
        incrementerdNumberBy(1);
    }

    // modifier without parameter to check owner before execution 
    modifier onlyOwner() {
        require(owner == msg.sender, "not a owner");
        _;
    }

    // modifier without parameter to check admin before execution
    modifier onlyAdmin() {
        require(owner == msg.sender, "not a owner");
        _;
    }

    // modifier without parameter to validate function parameter
    modifier isGreaterThanZero(uint _num) {
        require(_num > 0);
        _;
    }

    // Access is restricted to Owner for setting the admin
    function setAdmin(address _admin) external onlyOwner {
        admin = _admin;
    }

    // Function access is restricted to Only admin to delete owner
    function revokeOwnership() external onlyAdmin {
        delete owner;
    }

    // Declaring a function to Increment a value by parameter provided
    // This method is restricted to onlyOwner address
    function incrementerdNumberBy(uint _num) public view onlyOwner isGreaterThanZero(_num) returns(uint) {

        // safety require statement check the caller is not address 0x00

        require(msg.sender != address(0));
        // Local variable Nonce
        uint nonce = number + _num;

        // return statement to return final output of number
        return nonce;

    }
}
