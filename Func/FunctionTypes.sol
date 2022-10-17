//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract FunctionTypes {
    // 状态变量
    uint256 public number = 1;
    // 地址
    address payable myAddress;

    // 两数相加
    function add(uint x, uint y) external pure returns (uint){
        return x + y;
    }

    // 两数相减
    function minus(uint x, uint y) external pure returns (uint){
        return x - y;
    }

    // 全局变量
    function globalVars() external view returns (address, uint, uint){
        // 调用当前函数的地址
        address sender = msg.sender;
        // 当前时间戳
        uint timestamp =  block.timestamp;
        // 区块高度
        uint blockNumber = block.number;

        return (sender, timestamp, blockNumber);
    }

    // 外部可以访问
    function externalFunction() external{
        // 修改状态变量
        number = number + 1;
        myAddress = address(1);
    }

    // 只有内部可以访问 不用pure、view可以修改状态变量number
    function addInternal() internal{
        number = number + 2;
    }

    // 外部访问 合约内部调用内部的internal函数
    function addExternal() external{
        addInternal();
    }

    // 不可以访问成员变量
    function addPure(uint _number) external pure returns(uint){
        // 报错
        //number = number + 1;
        return _number + 1;
    }

    // 可以访问成员变量
    function addView() external view returns(uint256){
        return number + 1;
    }

    // 可以给合约支付
    function transformMoney(uint256 _balance) external payable returns(uint256){
        number = number + _balance;
        return address(this).balance;
    }


}
