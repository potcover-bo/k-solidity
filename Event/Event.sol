// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Event {
    mapping(address => uint256) public _balance;

    event Transfer(address indexed from, address indexed to, uint256 value);

    function _transfer(address from, address to, uint256 amount) external{
        _balance[from] = 1000000;
        _balance[from] -= amount;

        _balance[to] += amount

        emit Transfer(from, to, amount);

    }
}
