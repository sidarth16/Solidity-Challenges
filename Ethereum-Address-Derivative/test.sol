/**
 *Submitted for verification at Etherscan.io on 2022-11-18
*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Test {
    address public owner;

    function setOwner(bytes memory _owner) external {
        address ownerToSet = address(uint160(uint256(keccak256(_owner))));

        if (ownerToSet == msg.sender) {
            owner = ownerToSet;
        }
    }
}