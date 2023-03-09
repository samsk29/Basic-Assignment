pragma solidity ^0.8.0;

contract array{

    uint[] public array1;

    function add(uint number) public{
        array1.push(number);
    }

    function remove(uint number)public{
       uint index;
       uint length = array1.length - 1;
       for(uint i = 0; i<array1.length;i++){
            if(array1[i] == number){
                index = i;
            }
        }

        array1[index] = array1[length];
        array1.pop();
    }

    function arr() public view returns(uint[] memory){
        return array1;
    }
    }