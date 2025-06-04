// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract HelloWorld {
    event GreetingEmitted(
        address indexed sender,
        string message,
        uint256 timestamp
    );

    function sayHello(string memory message) public {
        emit GreetingEmitted(msg.sender, message, block.timestamp);
    }
}
