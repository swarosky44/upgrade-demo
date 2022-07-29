// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.9;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract Demo is Initializable, UUPSUpgradeable {
    uint256 public a;

    function init(uint256 _a) public initializer {
        a = _a;
    }

    function increaseA() external {
        a += 10;
    }

    function _authorizeUpgrade(address) internal override {}
}
