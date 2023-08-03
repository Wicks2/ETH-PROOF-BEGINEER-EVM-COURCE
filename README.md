# MyToken Smart Contract

This is a Solidity smart contract for the MyToken token.

## Table of Contents

- [Introduction](#introduction)
- [Smart Contract Details](#smart-contract-details)
  - [Public Variables](#public-variables)
  - [Mapping Variable](#mapping-variable)
  - [Functions](#functions)
- [Usage](#usage)
- [License](#license)

## Introduction

The `MyToken` smart contract is a basic token implementation written in Solidity. It allows for the creation of a custom token with a specified name, abbreviation, and initial total supply. It provides functions for minting new tokens and burning existing tokens.

## Smart Contract Details

### Public Variables

- `tokenName`: A string representing the name of the token (e.g., "thakur").
- `tokenAbbvr`: A string representing the abbreviation of the token (e.g., "thk").
- `totalSupply`: An unsigned integer representing the total supply of the token.

### Mapping Variable

- `tokenHolders`: A mapping that associates Ethereum addresses with their respective token balances.

### Functions

- `mint(address _address, uint _value) public`: This function allows the contract owner to mint new tokens and assign them to a specified address. It increases the total supply and updates the balance of the target address accordingly.

- `burn(address _address, uint _value) public`: This function allows the contract owner to burn tokens held by a specified address. It reduces the total supply and updates the balance of the target address accordingly.

## Usage

To use this smart contract, you can deploy it on the Ethereum blockchain using a compatible development environment like Remix or Truffle. After deployment, you can interact with the contract using its functions to mint new tokens and burn existing tokens. Make sure to follow the correct arguments when calling these functions.

Credits
This project is a solution to the project task provided by MetaCrafters.

Author:
Abhay Partap Singh Rana https://www.linkedin.com/in/abhay-rana-4520a5220

License This project is licensed under the MIT License - see the LICENSE.md file for details.This code is licensed under the MIT License. You can find the license text in the SPDX-License-Identifier comment at the beginning of the contract.
