
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // Solidity Versions

contract StudentsRecords{

struct Student{
  string name;
  uint256 age;
  bool RegStatus;

}

Student[] listofStudents;
// array that stores [] students record 

function store ( string memory _name, uint256 _age, bool _RegStatus) public{
  listofStudents.push(Student(_name, _age, _RegStatus ));

}

function retrieve(uint256 index) public view returns ( string memory _name, uint256 _age, bool _RegStatus){
return (listofStudents[index].name, listofStudents[index].age, listofStudents[index].RegStatus);

}

function getTotalStudents() public view returns(uint256){
 return  listofStudents.length;
}



}
