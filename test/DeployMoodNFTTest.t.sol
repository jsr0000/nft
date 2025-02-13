// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Test, console} from "lib/forge-std/src/Test.sol";
import {DeployMoodNFT} from "script/DeployMoodNFT.s.sol";


contract DeployMoodNFTTest is Test {
    function setUp() public {
        deployer = new DeployMoodNFT();
    }

    function testConvertSvgToUri() public {}
}