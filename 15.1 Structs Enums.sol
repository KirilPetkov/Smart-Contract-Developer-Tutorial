// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Creating a contract
contract EnumTypes {

    // Creating an enumerator Color
    enum Color {
        Red,
        Yellow,
        Blue,
        Green,
        Orange
    }

    // Declaring variable of type color enumerator
    Color color;

    // setting the Default value to first element
    Color constant default_value = Color.Red;
    // Returns uint
    // Red - 0
    // Yellow - 1
    // Blue - 2
    // Green - 3
    // Orange - 4
    // Update Color by passing uint into input
    
    function set(Color _color) public {
        color = _color;
    }

    // Update to a specific enum

    function setYellow() public {
        color = Color.Yellow;
    }

    // fetch the Enum

    function getColor() public view returns(Color) {
        return color;
   }

   // delete resets the enum to its first value, 0

   function reset() public {
       delete color;
   }
}