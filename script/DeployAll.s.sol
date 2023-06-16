// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import {DeployDealClient} from "script/deploy/DeployDealClient.s.sol";
import {DeploySimpleCoin} from "script/deploy/DeploySimpleCoin.s.sol";
import {DeployERC6551Registry} from "script/deploy/DeployERC6551Registry.s.sol";
import {DeploySimpleERC6551Account} from "script/deploy/DeploySimpleERC6551Account.s.sol";

contract DeployAll is DeployDealClient, DeploySimpleCoin, DeployERC6551Registry, DeploySimpleERC6551Account {
    function run()
        public
        override(DeployDealClient, DeploySimpleCoin, DeployERC6551Registry, DeploySimpleERC6551Account)
    {
        deploy("SimpleCoin");
        deploy("DealClient");
        deploy("ERC6551Registry");
        deploy("SimpleERC6551Account");
    }
}
