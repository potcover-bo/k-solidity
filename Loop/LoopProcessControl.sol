//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract LoopProcessControl {
    // if-else
    function ifElse(uint _x) external pure returns(uint res){
        if (_x < 10) {
            res = 1;
        }else if(_x < 20){
            res = 2;
        }else{
            res =  3;
        }
    }

    // while
    function whileExample() external pure returns (uint res){
        uint _x = 0;
        res = 0;
        while(_x <= 100){
            res += _x;
            _x += 1;
        }
    }

    // do-while
    function doWhile() external pure returns(uint res){
        res = 0;
        uint _x = 100;
        do{
            res += 10;
        }while(_x < 10);
    }

    // for loop
    function forExample() external pure returns(uint res){
        res = 0;
        uint idx = 1;
        for(; idx <= 100; idx++){
            res += idx;
        }
    }
}
