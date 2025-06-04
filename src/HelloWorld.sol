// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract DemoLogMessage {
    event LogMessage(address indexed sender, string message, uint256 timestamp);

    function sayHello(string memory message) public {
        emit LogMessage(msg.sender, message, block.timestamp);
    }
}
