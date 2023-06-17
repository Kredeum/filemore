// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "@forge/Script.sol";
import "@fevm/basic-deal-client/DealClient.sol";
import {DeployLite} from "lib/forge-deploy-lite/script/DeployLite.sol";
import {MarketTypes} from "@filecoin/contracts/v0.8/types/MarketTypes.sol";
import {CommonTypes} from "@filecoin/contracts/v0.8/types/CommonTypes.sol";
import {MarketCBOR} from "@filecoin/contracts/v0.8/cbor/MarketCbor.sol";

contract MyScript is Script, DeployLite {
    bytes32 public constant DEAL_ID = 0x183dd5125042b60eb72063e7a70def3a91846f599fedff80a300fa3358563d0a;
    address public constant deal_client = 0x6CD3204B3C1CF737489C4BC2760bAAf2886f4dC1;

    function run() external {
        bytes memory serializeDealProposal = DealClient(deal_client).getDealProposal(DEAL_ID);
        console.logBytes(serializeDealProposal);

        MarketTypes.DealProposal memory dealProposal = MarketCBOR.deserializeDealProposal(serializeDealProposal);

        CommonTypes.FilAddress memory provider = dealProposal.provider;
        console.logBytes(provider.data);
    }
}
