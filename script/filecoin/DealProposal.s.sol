// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "@forge/Script.sol";
import "@fevm/basic-deal-client/DealClient.sol";
import {DeployLite} from "lib/forge-deploy-lite/script/DeployLite.sol";

contract MyScript is Script, DeployLite {
    function run() external {
        address deployer = vm.envAddress("ETH_FROM");
        address deal_client = readAddress("DealClient");

        // Use the following to get your deal proposal from dealID
        // bytes32 dealId = vm.envBytes32("DEAL_ID");
        // console.logBytes32(dealId);

        ExtraParamsV1 memory extraParamsV1 = ExtraParamsV1({
            location_ref: vm.envString("LOCATION_REF"),
            car_size: uint64(vm.envUint("CAR_SIZE")),
            skip_ipni_announce: false,
            remove_unsealed_copy: false
        });

        // Replace this with whatever you'd like
        DealRequest memory dealRequest = DealRequest({
            piece_cid: bytes(vm.envString("PIECE_CID_BYTES")),
            piece_size: 32768, // uint64(vm.envUint("PIECE_SIZE")),
            verified_deal: false,
            label: vm.envString("LABEL"),
            start_epoch: 520000,
            end_epoch: 1555200,
            storage_price_per_epoch: 0,
            provider_collateral: 0,
            client_collateral: 0,
            extra_params_version: 1,
            extra_params: extraParamsV1
        });

        vm.startBroadcast(deployer);

        bytes32 dealId = DealClient(deal_client).makeDealProposal(dealRequest);

        bytes memory byts = DealClient(deal_client).getDealProposal(dealId);

        vm.stopBroadcast();

        console.logBytes32(dealId);
        console.logBytes(byts);
    }
}
