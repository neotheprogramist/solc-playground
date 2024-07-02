// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract ChainExample {
    uint256 public value;
    mapping (string => uint256) slots;

    function begin() public returns (ChainExample) {
        value = 0;
        return this;
    }

    function end() public view returns (uint256) {
        return value;
    }

    function increment(uint256 x) public returns (ChainExample) {
        value += x;
        return this;
    }

    function decrement(uint256 x) public returns (ChainExample) {
        value -= x;
        return this;
    }
}
