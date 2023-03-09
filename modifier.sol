pragma solidity ^0.8.0;

contract modifier1 {
    address owner;
    string private name;
   constructor() {
      owner = msg.sender;
   }
    modifier onlyOwner() {
         require(msg.sender == owner, 'Not Owner');
         _;
    }
    function setName(string memory newName) public onlyOwner{
        name = newName;
    }
    function getName () public view returns (string memory) {
        return name;
    }
}