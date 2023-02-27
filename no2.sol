pragma solidity ^0.8.0;

contract counter{
    uint count;
    function number()public{
        count += 1;
    }
    function returnvalue() public view returns(uint){
        return count;
    }
}