// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {ChainExample} from "../src/ChainExample.sol";

contract ChainExampleTest is Test {
    ChainExample public chainExample;

    function setUp() public {
        chainExample = new ChainExample();
    }

    function test_Increment() public {
        chainExample.begin();
        assertEq(chainExample.value(), 0);
    }

    function testFuzz_SetNumber(uint256 x) public {
        uint256 value = chainExample.begin().increment(x).decrement(x).end();
        assertEq(value, 0);
    }
}
