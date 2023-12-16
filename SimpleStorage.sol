
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage{
    //uint256, int256, bool, string, address, bytes32
    // here FevNmber intialise with 0
    uint256 public FevNumber;
    

    People public  person =People({FevNumber:2,name:"navin"});

    struct People{
        uint256 FevNumber;
        string name;
    }
    function store(uint256 _fevNum) public{
        FevNumber=_fevNum;
    }

    People[] public people;


    // here view function only allow to view the value we cant edit it 
     
    function retrive()public view returns (uint256){
            return FevNumber;
    }
    function addPerson (string memory _name, uint256 _favoriteNumber) public
    {
            people.push (People(_favoriteNumber, _name));
    }

}