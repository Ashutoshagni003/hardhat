# My Hardhat Token

This is a simple smart contract that implements a token. The token has a name, a symbol, and a total supply. It also has functions to transfer tokens, mint tokens, and burn tokens.

## Functions

* `mint(address _address, uint _value)` - Mints `_value` tokens to the address `_address`.
* `burn(address _address, uint _value)` - Burns `_value` tokens from the address `_address`.
* `transfer(address to, uint256 amount)` - Transfers `amount` tokens from the caller to the address `to`.
* `balanceOf(address account)` - Returns the balance of the account `account`.

## Usage

To deploy the contract, you can use the following command:


npx hardhat deploy


Once the contract is deployed, you can use the following commands to interact with it:


npx hardhat mint <address> <amount>
npx hardhat burn <address> <amount>
npx hardhat transfer <from> <to> <amount>
npx hardhat balanceOf <address>
```

## License

This code is licensed under the MIT License.
