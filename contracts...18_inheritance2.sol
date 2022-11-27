//SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.5.4;

// contract A{
//     function foo() public pure returns (string memory) {
//         return "A";
//     }
// }
// contract B {
//     function bar() public pure returns (string memory ) {
//         return "B";
//     }
// }
// contract C is A,B {

// }

contract A{
    function foo() public  pure returns (string memory) {
        return "A";
    }
}
contract B {
    function foo() public  pure returns (string memory ) {
        return "B";
    }
}


// NOTE: MOST BASED TYPE SHOULD BE IN THE LEFT SIDE AND MOST DERIVED IN THE RIGHT SIDE
// SOLIDITY SEARCHES function from right to left,

contract C is A,B {
    
}

contract D is A,C {
    
} 