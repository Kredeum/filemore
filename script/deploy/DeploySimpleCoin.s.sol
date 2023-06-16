// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@forge/Script.sol";

import {DeployLite} from "lib/forge-deploy-lite/script/DeployLite.sol";
import {SimpleCoin} from "@fevm/basic-solidity-examples/SimpleCoin.sol";

contract DeploySimpleCoin is DeployLite {
    function deploySimpleCoin() public returns (address simpleCoin) {
        vm.startBroadcast(vm.envAddress("ETH_FROM"));

        simpleCoin = address(new SimpleCoin());

        vm.stopBroadcast();
    }

    function run() public virtual {
        deploy("SimpleCoin");
    }
}
