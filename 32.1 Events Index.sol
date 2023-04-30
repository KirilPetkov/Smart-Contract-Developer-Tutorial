// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Defining calling contract
contract IndexEvents {

    event Order(uint256 indexed id, address from, address indexed to, uint256 indexed amount);

    function buy(address to, uint256 amount) external {
        emit Order(1, msg.sender, to, amount);
    }

}
