// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import {Script, console} from "forge-std/Script.sol";
import {AddressBook} from "../src/AddressBook.sol";

contract DeployAddressBookScript is Script {
    function run(address[] memory _owners) public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        AddressBook addressBook = new AddressBook(_owners);
        vm.stopBroadcast();
    }
}
