// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "../src/DemoLogMessage.sol";

contract SendEventLogMessage is Script {
    function run() public {
        // Get the contract address from command line
        address contractAddress = vm.envAddress("CONTRACT_ADDRESS");
        string memory message = vm.envString("MESSAGE");

        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Get the contract instance
        DemoLogMessage demoMessage = DemoLogMessage(contractAddress);

        // Call the logMessage function with the provided message
        demoMessage.logMessage(message);

        vm.stopBroadcast();
    }
}
