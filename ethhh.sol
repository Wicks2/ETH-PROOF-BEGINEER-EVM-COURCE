
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract MyToken {

    // public variables here
    string public tokenName = "thakur";
    string public tokenAbbvr = "thk";
    uint public totalSupply = 0;

// burn function
    function burn(address _address, uint _value) public{
        require(tokenHolders[_address] > _value, "Cannot burn more than balance tokens");
        totalSupply-=_value;
        tokenHolders[_address] -= _value;
    }

    // mapping variable here
    mapping(address=>uint) public tokenHolders;


    // mint function
    function mint(address _address, uint _value) public{
        totalSupply+=_value;
        tokenHolders[_address] += _value;
    }


    

}