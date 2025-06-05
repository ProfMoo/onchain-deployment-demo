// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "../src/DemoLogMessage.sol";

contract DeployEventDemo is Script {
    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        DemoLogMessage demoLogMessage = new DemoLogMessage();

        vm.stopBroadcast();
    }
}
