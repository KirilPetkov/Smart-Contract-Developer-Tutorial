// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract RealEstate {
    struct Property {
        address propAddress;
        uint price;
        address owner;
    }

    mapping(address => Property) public properties;
    address[] public buyers;

    function addProperty(address _address, uint _price, address _owner) public {
        properties[_address] = Property(_address, _price, _owner);
    }

    function buyProperty(address _address) public payable {
        Property storage property = properties[_address];
        require(msg.value >= property.price);
        property.owner = msg.sender;
        buyers.push(msg.sender);
    }
}