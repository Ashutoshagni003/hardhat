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
    balances[msg.sender] = totalSupply;
    _owner = msg.sender;
}

modifier onlyOwner() {
    require(msg.sender == _owner, "Only the contract owner can call this function.");
    _;
}

function transfer(address _to, uint256 _value) external {
    require(balances[msg.sender] >= _value, "Insufficient balance.");
    balances[msg.sender] -= _value;
    balances[_to] += _value;
    emit Transfer(msg.sender, _to, _value);
}

function mint(address _address, uint256 _value) external onlyOwner {
    totalSupply += _value;
    balances[_address] += _value;
    emit Mint(_address, _value);
}

function burn(uint256 _value) external {
    require(balances[msg.sender] >= _value, "Insufficient balance.");
    totalSupply -= _value;
    balances[msg.sender] -= _value;
    emit Burn(msg.sender, _value);
}

function balanceOf(address account) external view returns (uint256) {
    return balances[account];
}

}
