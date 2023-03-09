pragma solidity ^0.8.0;

contract event1{
    event Increment(address owner);
    function getValue(uint _a, uint _b) public {
        uint value;
        emit Increment(msg.sender);
        value = _a + _b;
    }
}