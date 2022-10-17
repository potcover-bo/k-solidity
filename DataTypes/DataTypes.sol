//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract DataTypes {
    // 默认值
    // 0
    uint public defaultUint;
    // 0
    uint256 public defaultUint256;
    //false
    bool public defaultBool;
    //0x
    bytes  public defaultBytes;
    // 0x0000000000000000000000000000000000000000000000000000000000000000
    bytes32 public defaultBytes32;
    // 0x0000000000000000000000000000000000000000
    address public defaultAddress;

    // 常量
    // 常量消耗的gas少
    address public constant MY_ADDRESS = 0xdD870fA1b7C4700F2BD7f44238821C26f7392148;
    uint public constant MY_UINT = 66;
}
