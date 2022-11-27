//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

contract Readwrite {
    uint num;
    address wall;
    bool sta;
    bytes1 sss;


    function get() public view returns(uint,address,bool,bytes1) {
        //Reading a variable 
        return (num,wall,sta,sss);
    }

    function set(uint _num,address _wall,bool _sta, bytes1 _sss) public {
        //Write a variable
        num = _num;
        wall = _wall;
        sta = _sta;
        sss = _sss;
    }
}