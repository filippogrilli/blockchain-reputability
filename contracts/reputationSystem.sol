// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReputationSystem {
    mapping(address => uint256) public reputation;

    function increaseReputation(address player) external {
        require(reputation[player] < 40, "Max reputation reached");
        reputation[player]++;
    }

    function decreaseReputation(address player) external {
        require(reputation[player] > 0, "Min reputation reached");
        reputation[player]--;
    }

    function getReputation(address player) external view returns (uint256) {
        return reputation[player];
    }
}
