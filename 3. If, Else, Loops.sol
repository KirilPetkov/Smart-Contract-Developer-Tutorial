// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract RealEstate {

    uint public minimumContribution;
    uint public fundsRaised;
    mapping(address => bool) public contributors;

    function contribute() public payable {
        if (msg.value < minimumContribution) {
        revert();
        }
        if (fundsRaised >= fundingGoal) {
        revert();
        }
        fundsRaised += msg.value;
        contributors[msg.sender] = true;
        if (fundsRaised >= fundingGoal) {
        endCrowdfund();
        }
    }

    function endCrowdfund() private {
    // do something
    }

    uint public fundingGoal = 100 ether;
}
