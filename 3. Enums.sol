// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract MyContract {

    // enum "State" with three possible values - "Waiting", "Ready", and "Active"

    enum State { Waiting, Ready, Active }
    State public state;

    // The contract also has a constructor function that sets the initial value of the "state" variable to "Waiting".

    constructor() public {
        state = State.Waiting;
    }

    // There are two additional functions defined in the contract. The "active" function sets the value of the "state" variable to "Active"

    function active() public {
        state = State.Active;
    }

    // While the "isActive" function returns a boolean indicating whether the current value of the "state" variable is "Active" or not.

    function isActive() public view returns(bool) {
        return state == State.Active;
    }
}
