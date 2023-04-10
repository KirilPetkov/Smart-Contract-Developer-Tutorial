// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract MyContract {

    // This Solidity code defines a smart contract called MyContract that allows adding new Person structs to an array called people. 

    Person[] public people;

    // The Person struct contains two string variables representing the first and last name of the person.

    uint256 public peopleCount;

    struct Person {

        string _firstName;

        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName) public {

        // The addPerson function takes two string parameters, _firstName and _lastName, and creates a new Person struct using these parameters. 

        people.push(Person(_firstName, _lastName));

        // The new Person is then added to the people array using the push function, and the peopleCount variable is incremented by one.

        peopleCount += 1;
    }
}