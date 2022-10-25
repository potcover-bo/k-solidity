// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

// revert require assert
contract Errors {
    uint public number = 1;

    function testRequire(uint _x) external pure {
        require(_x > 10, "_x must more than 10");
    }

    function testRevert(uint _x) external pure {
        if(_x <= 10){
            revert("_x must more than 10");
        }
    }

    function testAssertSuccess() public view {
        assert(number == 1);
    }

    function testAssertFail() public view {
        assert(number == 3);
    }

    error MyError(address caller, uint _x);

    function testCustomError(uint _x) public view{
        if(_x > 10){
            revert MyError(msg.sender, _x);
        }
    }
}
