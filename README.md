# ETH-PROOF-BEGINEER-EVM-COURCE
CREATING MY OWN TOKEN
The project involves the creation of a custom token using the Solidity programming language. Tokens are a fundamental aspect of the Ethereum blockchain ecosystem, representing digital assets that can be transferred and exchanged. By developing your own token, you can explore the underlying concepts of blockchain, smart contracts, and decentralized finance.

Description
This project focuses on creating a custom token using the Solidity programming language within the Remix IDE. Remix is a popular web-based development environment that provides a user-friendly interface for writing, compiling, and deploying smart contracts on the Ethereum blockchain.

Getting Started With Executing Program
The project will involve the following steps:

Setting up Remix:

Open the Remix IDE in your web browser.
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
Creating the Token Contract:
Start a new file in the code editor within Remix. Copy and paste the following code into the file:

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



Compiling the Contract:
Use the Remix compiler panel to compile your token contract.
Select the appropriate compiler version i.e 0.8.18.
Let me explain the different parts of the contract:

The contract is named MyToken and the following are some functionalities of the code: 

1. Token Creation: When the contract is deployed, the constructor function is executed, which takes three parameters: _name (the name of the token), _symbol (the symbol or ticker of the token), and _totalSupply (the initial total supply of tokens). The constructor initializes the contract's state variables name, symbol, and total supply with the provided values. It also assigns the entire supply to the address that deployed the contract by updating the balances mapping.

2. Minting: The mint function allows additional tokens to be created and added to the supply. It takes two parameters: account (the address to which the new tokens will be assigned) and value (the amount of tokens to mint). This function increases the totalSupply by the specified value and adds the minted tokens to the balances mapping for the account address.

3. Burning: The burn function allows tokens to be removed from circulation. It takes two parameters: account (the address from which tokens will be burned) and value (the amount of tokens to burn). This function first checks if the account has a sufficient balance to burn the specified value. If the balance is sufficient, it decreases the totalSupply by the specified value and updates the balances mapping for the account address accordingly.

4. Read-Only Functions: The balances mapping is declared as public, allowing it to be accessed directly. This means you can query the balance of any address using balances[address] after the contract is deployed. Similarly, the name, symbol, and totalSupply variables are declared as public, enabling their values to be accessed directly.

After deploying this contract, you will have a token contract with the ability to create tokens, assign them to addresses, and remove tokens from circulation through minting and burning functions. The contract also provides read-only access to token balances and other metadata such as name, symbol, and total supply.

Author: Abhay Partap Singh Rana/https://www.linkedin.com/in/abhay-rana-4520a5220

License
This project is licensed under the MIT License - see the LICENSE.md file for details.This code is licensed under the MIT License. You can find the license text in the SPDX-License-Identifier comment at the beginning of the contract.

Note: Ensure that you are using a compatible Solidity compiler version (0.8.18) or newer to compile and interact with this contract.

