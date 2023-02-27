pragma solidity ^0.8.0;
contract checknumber{

    function number(int a) public view returns(string memory){
       require(a%2==0,"This is a odd number");
       return "This is a even number";
    }
}