//SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.4;

// contract A {
//     function getContractName() public pure returns (string memory) {
//         return "Contract A";
//     }
// }

// contract B is A{

// }

//**************override***************

// contract A {
//     function getContractName() public virtual pure returns (string memory) {
//         return "Contract A";
//     }
// }

// contract B is A{
//     function getContractName() public override pure returns (string memory) {
//         return "Contract B";
//     }
// }

// contract A {
//     function getContractName() public pure returns (string memory) {
//         return "Contract A";
//     }
// }

// contract B is A{
//     function getContractName(uint _i) public  pure returns (string memory) {
//         return "Contract B";
//     }
// }

contract A {
    string public name ;

    constructor(string memory _name) public {
        name = _name;
    }
}

//MEHTOD 1
// contract B is A("Contract B"){

// }

//method 2
//pASSINg value string Contract B to constructor in contract A
// contract B is A {
//     constructor() A("Contract B") public {

//     }
// }

// method 3 
// passing variable parameters to constructor through contract B

contract B is A {
    constructor(string memory _name) A( _name ) public {

    }
}


