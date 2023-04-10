// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract MyContract {

    // The Person struct contains three variables: an id of type uint256, and two string variables representing the first and last name of the person.

    uint256 public peopleCount = 0;

    mapping(uint => Person) public people;

    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName) public {

        // The addPerson function takes two string parameters, _firstName and _lastName, and creates a new Person struct using these parameters. 

        peopleCount += 1;

        // The new Person is then added to the people mapping using the peopleCount as the key and incrementing it for the next insertion.

        people[peopleCount] = Person(peopleCount, _firstName, _lastName);

        // The peopleCount variable is used to keep track of the number of people added to the mapping. It is initially set to 0 and incremented by one every time a new person is added.

    }
}
