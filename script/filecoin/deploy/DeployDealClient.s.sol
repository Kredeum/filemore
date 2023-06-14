// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@forge/Script.sol";

import {DeployLite} from "lib/forge-deploy-lite/script/DeployLite.sol";
import {DealClient} from "@fevm/basic-deal-client/DealClient.sol";

contract DeployDealClient is DeployLite {
    function deployDealClient() public returns (address dealClient) {
        vm.startBroadcast(vm.envAddress("ETH_FROM"));

        dealClient = address(new DealClient());

        vm.stopBroadcast();
    }

    function run() public virtual {
        deploy("DealClient");
    }
}
