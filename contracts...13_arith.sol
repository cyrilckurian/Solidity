//SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.4;

contract arithmetic {

    uint a ; 
    uint b ;

    function get(uint _a, uint _b) public {
        a = _a;
        b = _b;

    }

    function operate() public view  returns(uint,uint,uint,uint){
        uint c = a + b;
        uint d = a - b; 
        uint e = a * b;
        uint f = a / b;

        return(c,d,e,f);
    }
}