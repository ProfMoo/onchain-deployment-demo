// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract DemoLogMessage {
    event NewMessage(address indexed sender, string message, uint256 timestamp);

    function logMessage(string memory message) public {
        emit NewMessage(msg.sender, message, block.timestamp);
    }
}
