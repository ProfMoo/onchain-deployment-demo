// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "../src/HelloWorld.sol";

contract SendEventLogMessage is Script {
    function run() public {
        // Get the contract address from command line
        address contractAddress = vm.envAddress("CONTRACT_ADDRESS");
        string memory message = vm.envString("MESSAGE");

        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Get the contract instance
        HelloWorld helloWorld = HelloWorld(contractAddress);

        // Call the sayHello function with the provided message
        helloWorld.sayHello(message);

        vm.stopBroadcast();
    }
}
