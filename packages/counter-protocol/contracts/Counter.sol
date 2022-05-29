//SPDX-License-Identifier: GPL 3
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import "hardhat/console.sol";

contract Counter is Initializable, OwnableUpgradeable {
    uint private count;

    function initialize(uint _count) public initializer {
        count = _count;
        __Ownable_init();
    }

    function getCount() public view returns (uint) {
        return count;
    }

    function incrementCount() public returns (uint){
        count += 1;
        return count;
    }

    function resetCount() public onlyOwner {
        count = 0;
    }
}
