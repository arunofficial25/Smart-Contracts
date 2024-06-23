# TestContract
=======================

## Overview
-----------

This is a simple Solidity contract that demonstrates the use of `require()`, `assert()`, and `revert()` statements. The contract allows the owner to set and manage a balance, and provides functions for withdrawing, depositing, and transferring ownership.

## Functions
------------

### 1. `setBalance(uint _balance)`

Sets the balance of the contract to `_balance`. Only the owner can call this function.

### 2. `withdraw(uint _amount)`

Withdraws `_amount` from the contract's balance. The function checks that the balance is sufficient before making the withdrawal.

### 3. `transferOwnership(address _newOwner)`

Transfers ownership of the contract to `_newOwner`. Only the current owner can call this function.

### 4. `getBalance()`

Returns the current balance of the contract.

### 5. `deposit(uint _amount)`

Deposits `_amount` into the contract's balance. The function checks that the sender is valid and that the balance does not overflow.

## Statements
-------------

### `require()`

Used to validate conditions before executing a function. If the condition is false, the function will revert.

### `assert()`

Used to validate conditions during execution. If the condition is false, the function will revert.

### `revert()`

Used to manually revert a function call. Can be used to provide a custom error message.

## Deployment
------------

To deploy this contract, simply compile and deploy it to your preferred Ethereum network using a tool like Truffle or Remix.

## Testing
---------

To test this contract, you can use a tool like Truffle or Hardhat to write and execute test cases.

## License
---------

Arun
(22bet10320@cuchd.in)
(kumararunlamba89@gmail.com)

This contract is licensed under the MIT License.
