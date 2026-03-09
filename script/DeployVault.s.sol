// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {EvictionVault} from "../src/EvictionVault.sol";


contract DeployVault is Script {

    EvictionVault public vault;

    function run() public {
        vm.startBroadcast();

        address[] memory owners = new address[](2);
        owners[0] = address(0x123);
        owners[1] = address(0x456);

        vault = new EvictionVault{value: 1 ether}(owners, 2);

        vm.stopBroadcast();
    }
}