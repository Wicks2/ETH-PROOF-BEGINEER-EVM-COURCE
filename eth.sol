// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    string public name;
    string public symbol;
    uint256 public totalSupply;

    mapping(address => uint256) public balances;

    constructor(string memory _name, string memory _symbol, uint256 _totalSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _totalSupply;
        balances[msg.sender] = _totalSupply;
    }

    function mint(address account, uint256 value) public {
        totalSupply += value;
        balances[account] += value;
    }

    function burn(address account, uint256 value) public {
        require(balances[account] >= value, "Insufficient balance");
        totalSupply -= value;
        balances[account] -= value;
    }
}
