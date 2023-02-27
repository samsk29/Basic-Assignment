pragma solidity ^0.8.0;
contract mappingstudentdata{
    struct studentDetails{
        string name;
        string class;
        uint age;
        uint percentage;
    }

    mapping(uint => studentDetails) student;

    function insertdata(string memory Name,string memory Class,uint Age,uint Percentage,uint Rollno) public{
        student[Rollno] = studentDetails(Name,Class,Age,Percentage);
    }

    function getdata(uint Rollno)public view returns(string memory,string memory,uint,uint){
        return (student[Rollno].name,student[Rollno].class,student[Rollno].age,student[Rollno].percentage);
    }
}