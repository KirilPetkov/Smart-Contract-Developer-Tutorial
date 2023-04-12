// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Struct example
contract TypesDemo {

    // declaring struct of product
    struct Product {
        uint id;
        uint price;
    }

    // declaring a variable as a Product object
    Product _product;

    // function to set value in product object stuct
    function setProduct(uint _id, uint _price) public {
        // setting value on produc struct
        _product.id = _id;
        _product.price = _price;
    }

    // function to get value from product object
    function getOriductDetails() public view returns(uint _id, uint _price) {
    // fetching the value from struct
    return (_product.id, _product.price);
    }
}

// Mapping Example
contract MappingDemo {

    // declairing whitelisted mapping of address to value bool type
    mapping(address => bool) public whitelisted;
    uint count;

    // function to add address to the whitelisted mapping
    function addWhitelistedAddress(address _user) public {
        // adding value by setting _user address as a key
        // in whitelisted mapping with a value of true
        count ++;
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

// Array Example
contract ArraysDS {

    //Declairing state variables of type int array without any fixed size pre defined
    int[] numbers;

    // function to push values to an array
    function store() public returns(int[] memory) {
        numbers.push(5);
        numbers.push(10);
        numbers.push(20);
        return numbers;
    }

    // function to pop last index values from the array
    function deleteLastElement() public returns(int[] memory) {
        numbers.pop();
        return numbers;
    }

    // function to get length of a array
    function getLengthOfArray() public view returns(uint) {
        return numbers. length;
    }

    // fetching element at specific index from array
    function getElementAtThirdIndex() public view returns(int) {
        //returning int at third intex of array i.e -20
        return numbers[3];
    }
}