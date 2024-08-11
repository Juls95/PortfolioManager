// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/PManager.sol";

contract DeployPManager is Script {
    function run() external {
        vm.startBroadcast();

        // Replace these with actual values
        address pythAddress = vm.envAddress("PYTH_ADDRESS");
        bytes32 ethUsdPriceId = vm.envBytes32("ETH_USD_PRICE_ID");


        PManager myContract = new PManager(pythAddress, ethUsdPriceId);

        vm.stopBroadcast();
    }
}