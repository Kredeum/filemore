// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "@forge/Script.sol";
import "@fevm/basic-deal-client/DealClient.sol";
import {DeployLite} from "lib/forge-deploy-lite/script/DeployLite.sol";

contract MyScript is Script, DeployLite {
    function run() external {
        address deployer = vm.envAddress("ETH_FROM");
        address deal_client = readAddress("DealClient");

        // Get dealID from ENV
        bytes32 dealId = vm.envBytes32("DEAL_ID");

        vm.startBroadcast(deployer);
        bytes memory byts = DealClient(deal_client).getDealProposal(dealId);
        vm.stopBroadcast();

        console.logBytes(byts);
    }
}
