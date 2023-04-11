// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Product {

    uint id;
    string name;
    
    function addProduct(uint _id, string memory _name) public {
        id = _id;
        name = _name;
    }

    function getProduct() public view returns(uint, string memory) {
        return (id, name);
    }
}

contract FoodProduct is Product {

    uint expirationDate;

    function addExpirationDate(uint _expirationDate) public {
        expirationDate = _expirationDate;
    }

    function getExpirationDate() public view returns (uint) {
        return expirationDate;
    }
}