# hardhat_
###Token Contract
This is a Solidity smart contract for a token called "My Hardhat Token" (MHT). The contract allows token transfers between Ethereum accounts and provides functions for minting and burning tokens.

##Prerequisites
Solidity compiler version ^0.8.9
Hardhat library
##Installation
Clone the repository.
Install the required dependencies by running the following command:
shell
Copy code
npm install
##Usage
Compile the smart contract by running the following command:
shell
Copy code
npx hardhat compile
Deploy the contract to an Ethereum network of your choice.

Interact with the contract by calling its functions from a compatible Ethereum wallet or using a development tool like Hardhat Network.

##Contract Details
name (string): The name of the token ("My Hardhat Token").
symbol (string): The symbol of the token ("MHT").
totalSupply (uint256): The total supply of tokens (1,000,000).
owner (address): The address of the contract owner.
##Functions
mint(address _address, uint _value): Mints additional tokens and assigns them to the specified address.
burn(address _address, uint _value): Burns tokens from the specified address by deducting the value from the total supply and the balance of the sender.
transfer(address to, uint256 amount): Transfers tokens from the sender's account to the specified account.
balanceOf(address account): Retrieves the token balance of a given account.
##Events
Transfer(address indexed _from, address indexed _to, uint256 _value): Triggered when tokens are transferred between accounts.
