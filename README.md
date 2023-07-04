# ETH-PROOF-BEGINEER-EVM-COURCE
CREATING MY OWN TOKEN
The project involves the creation of a custom token using the Solidity programming language. Tokens are a fundamental aspect of the Ethereum blockchain ecosystem, representing digital assets that can be transferred and exchanged. By developing your own token, you can explore the underlying concepts of blockchain, smart contracts, and decentralized finance.

Description
This project focuses on creating a custom token using the Solidity programming language within the Remix IDE. Remix is a popular web-based development environment that provides a user-friendly interface for writing, compiling, and deploying smart contracts on the Ethereum blockchain.

Getting Started With Executing program
The project will involve the following steps:

Setting up Remix:

Open the Remix IDE in your web browser.
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
Creating the Token Contract:
Start a new file in the code editor within Remix. Copy and paste the following code into the file:

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


Compiling the Contract:
Use the Remix compiler panel to compile your token contract.
Select the appropriate compiler version i.e 0.8.18.
Let me explain the different parts of the contract:

The contract is named MyToken.
1. It has public variables name, symbol, and totalSupply to store the details about the token.
2. There is a mapping balances that maps addresses to their respective token balances.
3. The constructor takes the initial name, symbol, and total supply of the token. It initializes the contract creator's balance with the total supply.
4. The mint function allows anyone to mint new tokens by providing an address and a value. It increases the total supply by the given value and increases the balance of the specified address accordingly.
5. The burn function allows token holders to burn (destroy) their tokens. It checks if the balance of the account is greater than or equal to the value to be burned. If so, it deducts the value from the total supply and from the balance of the account.
Author:
Abhay Partap Singh Rana

https://www.linkedin.com/in/abhay-rana-4520a5220

License
This project is licensed under the MIT License - see the LICENSE.md file for details.This code is licensed under the MIT License. You can find the license text in the SPDX-License-Identifier comment at the beginning of the contract.

Note: Ensure that you are using a compatible Solidity compiler version (0.8.18) or newer to compile and interact with this contract.

