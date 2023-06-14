// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import {DeployDealClient} from "script/filecoin/deploy/DeployDealClient.s.sol";
import {DeploySimpleCoin} from "script/filecoin/deploy/DeploySimpleCoin.s.sol";

contract DeployAll is DeployDealClient, DeploySimpleCoin {
    function run() public override(DeployDealClient, DeploySimpleCoin) {
        deploy("SimpleCoin");
        deploy("DealClient");
    }
}
