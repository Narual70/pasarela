// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Counter {
    uint256 public number;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function setNumber(uint256 newNumber) public {
        require(msg.sender == owner, "Counter: caller is not the owner");
        number = newNumber;
    }

    function increment() public {
        require(number < 100, "Counter: max value reached");
        number++;
    }
}
