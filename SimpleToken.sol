// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleToken {
    // Variables to store token details
    string public name;
    string public symbol;
    uint256 public total_supply;

    // Mapping of addresses to token balances
    mapping(address => uint256) public balances;

    // Function used to mint new tokens
    function mint(address account, uint256 amount) public {
        total_supply += amount;
        balances[account] += amount;
    }

    // Function used to burn tokens
    function burn(address account, uint256 amount) public {
        require(balances[account] >= amount, "Insufficient balance");
        total_supply -= amount;
        balances[account] -= amount;
    }
}
