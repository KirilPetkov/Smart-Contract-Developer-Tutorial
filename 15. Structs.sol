// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract Sample {

    // declaring struct of product
    struct Product {
        uint id;
        uint price;
    }

    // declaring a varible as a Product object
    Product _product;

    // function to set value in product object struct
    function setProduct(uint _id, uint _price) public {
        // setting value on product struct
        _product.id = _id;
        _product.price = _price;
    }

    // function to get value from product object
    function getProductDetails() public view returns(uint _id, uint _price) {
        // fetching the value from struct
        return(_product.id,_product.price);
    }
}