// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Defining Libary contract
library Search {

    function sumUsingInlineAssembly(uint[] memory _data) public pure returns (uint o_sum) {
        for (uint i = 0; i < _data.length; ++i) {
            assembly {
                o_sum := add(o_sum, mload(add(add(_data, 0x20), mul(i, 0x20))))
            }
        }
    }
}

contract Demo {
    uint[] data;

    // using... for keyword
    using Search for uint[];

    constructor() {
        data.push(1);
        data.push(2);
        data.push(3);
        data.push(4);
        data.push(5);
    }

    function isValuePresent() external view returns(uint) {
        // Using lib search
        uint index = data.sumUsingInlineAssembly();
        return index;
    }

}
