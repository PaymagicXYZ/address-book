// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

interface IAddressBook {
    function getOwners() external view returns (address[] memory);
}
