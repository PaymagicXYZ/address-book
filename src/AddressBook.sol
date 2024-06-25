// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "./IAddressBook.sol";

contract AddressBook is IAddressBook {
    address[] internal owners;

    constructor(address[] memory _owners) {
        owners = _owners;
    }

    function getOwners() external view returns (address[] memory) {
        return owners;
    }
}
