// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import "@forge/Script.sol";
import "@fevm/filecoin-api-examples/FilecoinMarketConsumer.sol";

contract MyScript is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        uint64 dealID = uint64(vm.envUint("DEAL_ID")); // Pass the DEAL_ID in as an environment variable
        vm.startBroadcast(deployerPrivateKey);

        FilecoinMarketConsumer market_consumer = new FilecoinMarketConsumer(); // Put valid address here

        market_consumer.storeAll(dealID);

        vm.stopBroadcast();
    }
}
