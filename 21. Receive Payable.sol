// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// This contract keeps all Ether supplied to it and has no method of returning it.

contract Sink {
    event Received(address, uint);
    receive() external payable {
        emit Received(msg.sender, msg.value);
    }
}