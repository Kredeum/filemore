// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@forge/Script.sol";
import "@fevm/basic-deal-client/DealClient.sol";
import {DeployLite} from "lib/forge-deploy-lite/script/DeployLite.sol";

contract MyScript is Script, DeployLite {
    bytes public constant PIECE_CID = "baga6ea4seaqek72crzsvezktfubaf3p7jncnhe7e4yoke2dfmeps5dk6swhggfq";
    uint64 public constant PIECE_SIZE = 32768;
    string public constant PAYLOAD_CID = "bafybeigp3hpjhqbmpqobsaomcoimdfkfg72o7ylxcian3grkly464cye5a";
    string public constant LOCATION_REF =
        "https://data-depot.lighthouse.storage/api/download/download_car?fileId=cc601ad7-b6fc-4ed2-ba80-e5b7bebcb5a6.car";
    uint64 public constant CAR_SIZE = 26240;

    function run() external {
        address deployer = vm.envAddress("ETH_FROM");
        address deal_client = readAddress("DealClient");

        // Use the following to get your deal proposal from dealID
        // bytes32 dealId = vm.envBytes32("DEAL_ID");
        // console.logBytes32(dealId);

        ExtraParamsV1 memory extraParamsV1 = ExtraParamsV1({
            location_ref: LOCATION_REF,
            car_size: CAR_SIZE,
            skip_ipni_announce: false,
            remove_unsealed_copy: false
        });

        // Replace this with whatever you'd like
        DealRequest memory dealRequest = DealRequest({
            piece_cid: PIECE_CID,
            piece_size: PIECE_SIZE,
            verified_deal: false,
            label: PAYLOAD_CID,
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
        vm.stopBroadcast();

        console.logBytes32(dealId);
        console.logBytes(byts);
    }
}
