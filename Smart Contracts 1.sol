/*
write a smart contract that implements the require(), assert() and revert() statements.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TestContract {
    address private owner;
    uint public balance;

    constructor() {
        owner = msg.sender;
    }

    // Function 1: Set balance with require statement
    function setBalance(uint _balance) public {
        require(msg.sender == owner, "Only the owner can set the balance");
        balance = _balance;
    }

    // Function 2: Withdraw balance with require statement
    function withdraw(uint _amount) public {
        require(balance >= _amount, "Insufficient balance");
        balance -= _amount;
    }

    // Function 3: Transfer ownership with revert statement
    function transferOwnership(address _newOwner) public {
        if (msg.sender!= owner) {
            revert("Only the owner can transfer ownership");
        }
        owner = _newOwner;
    }

    // Function 4: Get balance with no statements
    function getBalance() public view returns (uint) {
        return balance;
    }

    // Function 5: Deposit balance with require and assert statements
    function deposit(uint _amount) public {
        require(msg.sender!= address(0), "Invalid sender");
        balance += _amount;
        assert(balance >= _amount); // Check for overflow
    }
}
