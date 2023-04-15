// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IERC20, ERC20, ERC4626} from "lib/openzeppelin-contracts/contracts/token/ERC20/extensions/ERC4626.sol";

// import {ERC20, IERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";

interface IERC20WNameAndSymbol is IERC20 {
    function name() external view returns (string memory);

    function symbol() external view returns (string memory);
}

contract Vault is ERC4626 {
    constructor(IERC20 asset_) ERC4626(asset_) ERC20("Vault", "VLT") {}

    function _deposit(
        address caller,
        address receiver,
        uint256 assets,
        uint256 shares
    ) internal override {
        super._deposit(caller, receiver, assets, shares);
    }

    function _withdraw(
        address caller,
        address receiver,
        address owner,
        uint256 assets,
        uint256 shares
    ) internal override {
        super._withdraw(caller, receiver, owner, assets, shares);
    }
}
