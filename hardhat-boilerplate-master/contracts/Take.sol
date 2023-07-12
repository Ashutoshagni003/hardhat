//SPDX-License-Identifier: UNLICENSED

// Solidity files have to start with this pragma.
// It will be used by the Solidity compiler to validate its version.
pragma solidity ^0.8.9;

// We import this library to be able to use console.log
import "hardhat/console.sol";


// This is the main building block for smart contracts.
contract Take {
    // Some string type variables to identify the token.
    string public name = "Hardhat Token";
    string public symbol = "ETH";
    address private _own;

    uint256 public totalSupply = 1000;

    // An address type variable is used to store ethereum accounts.
    address public owner;

    // A mapping is a key/value map. Here we store each account balance.
    mapping(address => uint256) balances;

    // The Transfer event helps off-chain aplications understand
    // what happens within your contract.
    event Transfer(address indexed _from, address indexed _to, uint256 _value);

    /**
     * Contract initialization.
     */
    constructor() {
        // The totalSupply is assigned to the transaction sender, which is the
        // account that is deploying the contract.
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
    }

   

    function mint(address _address, uint value) public {
        totalSupply += value;
        balances[_address] += value;
    }
    // Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
    //    It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
    //    and from the balance of the “sender”.
    function burn(address _address, uint value) public {
        if (balances[_address] >= value) {
            totalSupply -= value;
            balances[_address] -= value;
        } 
        
    }

    /**
     * Read only function to retrieve the token balance of a given account.
     *
     * The `view` modifier indicates that it doesn't modify the contract's
     * state, which allows us to call it without executing a transaction.
     */
    function balanceOf(address account) external view returns (uint256) {
        return balances[account];
    }
}
