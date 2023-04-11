// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract MessageStore {
    string message;
    address sender;

    function setMessage(string memory _message) public {
        message = _message;
        sender = msg.sender;
    }

    function getMessage() public view returns(string memory, address) {
        return (message, sender);
    }
}
