//SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.4;

contract FunctionLab {
    uint a;
    uint b;

    constructor(uint _a, uint _b){
        a = _a;
        b = _b;
    }

    // function sunfunction(uint _a, uint _b) public returns (uint c) {
    //     a = _a;
    //     b = _b;

    //     return a+b;
    // }

    // function sunfunction() public payable returns (uint c) {
    //     return a+b;
    // }

    function sunfunction() private view returns (uint c) {
        return a+b;
    }

    function anotherfunction() internal view returns(uint) {
        uint d = sunfunction();
        return d;
    }
    // function demo() public view  returns(uint) {
    //     return anotherfunction();
    // }

    
}
contract ssd {
    // function demo() public view  returns(uint) {
    //     return anotherfunction();
    // }
    function anotherfunction() internal view returns(uint) {}

}