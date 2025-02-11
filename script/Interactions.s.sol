// SPDX-License-Identifier: MIT

import {Script} from "lib/forge-std/src/Script.sol";
import {DevOpsTools} from "lib/foundry-devops/src/DevOpsTools.sol";
import {BasicNFT} from "src/BasicNFT.sol";

pragma solidity ^0.8.19;

contract MintBasicNFT is Script {
    string public constant PUG =
        "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";
    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment(
            "BasicNFT",
            block.chainid
        );
        mintNftOnContract(mostRecentlyDeployed);
    }

    function mintNftOnContract(address contractAddress) public {
        vm.startBroadcast();
        BasicNFT(contractAddress).mintNft(PUG);
        vm.stopBroadcast();
    }
}
