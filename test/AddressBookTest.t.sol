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
        address[] memory owners = addressBook.getOwners();
        assertEq(owners.length, 2);
        assertEq(owners[0], address(1));
        assertEq(owners[1], address(2));
    }
}
