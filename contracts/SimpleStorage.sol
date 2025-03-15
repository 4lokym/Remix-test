//SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;


contract SimpleStorage{

    struct People {
        string name;
        uint256 favoriteNumber;
    }


    function store(uint256  _aNumber) public{
        aNumber =  _aNumber;
    }

    function retrieve_aNumber() public view returns(uint256){
        return aNumber;
    }

    function addPerson(string memory name, uint256 _num) public {
        people.push(People(name, _num));
        nameToFavorite[name] = _num;
    }

    uint256 public aNumber;

    People[] public people;

    mapping(string => uint256) public nameToFavorite;

}