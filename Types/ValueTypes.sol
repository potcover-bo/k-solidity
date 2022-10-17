// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ValueTypes {
    // 布尔值
    bool public b = true;
    // 无符号整数
    uint public u = 123;

    // 整数
    int public i = -123;
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    // 地址 20个字节
    address public addr = 0xd9145CCE52D386f254917e481eB44e9943F39138;

    // 可以转账的地址
    address payable public payableAddr = payable(addr);

    // 定长字节数组
    bytes32 public b32 = "potcover";
}
