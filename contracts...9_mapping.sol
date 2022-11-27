//SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.4;

contract Mapping {
    // Mapping is similar to dictionary in python

    mapping(address => uint) public balances; // if you input address it will the balance of the same address
    mapping(address => mapping(address => bool)) public isFriend;

    function examples() external {
        balances[msg.sender] = 123;
        uint bal = balances[msg.sender];
        uint bal2 = balances[address(1)]; //0

        balances[msg.sender] += 456;

        delete balances[msg.sender];

        isFriend[msg.sender][address(this)] = true;

    }   
}