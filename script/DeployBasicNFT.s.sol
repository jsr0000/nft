// SPDX-License-Identifier

pragma solidity ^0.8.19;

import {Script} from "lib/forge-std/src/Script.sol";
import {BasicNFT} from "src/BasicNFT.sol";

contract DeployBasicNFT is Script {
    function run() external returns (BasicNFT) {
        vm.startBroadcast();
        BasicNFT basicNft = new BasicNFT();
        vm.stopBroadcast();
        return basicNft;
    }
}