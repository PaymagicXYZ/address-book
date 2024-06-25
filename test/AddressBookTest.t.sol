// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import {Test, console} from "forge-std/Test.sol";
import {AddressBook} from "../src/AddressBook.sol";

contract AddressBookTest is Test {
    AddressBook public addressBook;
    address[] public owners;

    function setUp() public {
        owners = [address(1), address(2)];
        addressBook = new AddressBook(owners);
    }

    function test_GetOwners() public {
        address[] memory _owners = addressBook.getOwners();
        assertEq(_owners.length, 2);
        assertEq(_owners[0], address(1));
        assertEq(_owners[1], address(2));
    }
}
