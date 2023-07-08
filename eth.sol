// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    string public tokenName;
    string public tokenAbbrv;
    uint public totalSupply;
    mapping(address => uint) public balances;

    constructor(string memory _name, string memory _abbrv, uint _initialSupply) {
        tokenName = _name;
        tokenAbbrv = _abbrv;
        totalSupply = _initialSupply;
        balances[msg.sender] = _initialSupply;
    }

    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    function burn(address _address, uint _value) public {
        require(balances[_address] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_address] -= _value;
    }
}
