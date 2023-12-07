// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title MyToken
/// @notice Implementation of the ERC20 standard with ownership features
/// @dev Inherits from ERC20 and Ownable contracts from OpenZeppelin
contract MyToken is ERC20, Ownable {
    /// @notice Constructs the MyToken contract
    /// @dev Sets token name to "MyToken" and symbol to "MTK"
    /// @param initialOwner The address that will be granted initial ownership of the token
    constructor(address initialOwner) ERC20("MyToken", "MTK") Ownable(initialOwner) {}

    /// @notice Allows the current owner to mint new tokens
    /// @dev Restricted to be callable only by the contract owner
    /// @param to The address that will receive the minted tokens
    /// @param amount The amount of tokens to mint
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
