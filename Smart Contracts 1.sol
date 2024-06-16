// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    address private owner;
    uint public balance;

    constructor() {
        owner = msg.sender;
        balance = 0;
    }

    function deposit(uint amount) public {
        // Require that the sender is the owner
        require(msg.sender == owner, "Only the owner can deposit funds");

        // Assert that the amount is positive
        assert(amount > 0);

        // Update the balance
        balance += amount;
    }

    function withdraw(uint amount) public {
        // Require that the sender is the owner
        require(msg.sender == owner, "Only the owner can withdraw funds");

        // Check that the balance is sufficient
        require(balance >= amount, "Insufficient balance");

        // Update the balance
        balance -= amount;
    }

    function transfer(address recipient, uint amount) public {
        // Require that the sender is the owner
        require(msg.sender == owner, "Only the owner can transfer funds");

        // Check that the balance is sufficient
        require(balance >= amount, "Insufficient balance");

        // Revert if the recipient is the zero address
        if (recipient == address(0)) {
            revert("Cannot transfer to the zero address");
        }

        // Update the balance
        balance -= amount;

        // Emit an event to notify the recipient
        emit Transfer(recipient, amount);
    }

    event Transfer(address indexed recipient, uint amount);
}
