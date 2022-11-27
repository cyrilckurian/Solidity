//SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.5.4;

contract A {
    event Log(string message );

    function foo() public  {
        emit Log("A. foo was called");
    }

    function bar() public {
        emit Log("A. bar was called");
    }
}

contract B is A {
    function foo()  public {
        emit Log("B.foo called");
        A.foo();
    }

    function bar() public {
        emit Log("B. bar called");
        super.bar();
    }
}

contract C is A {
    function foo() public {
        emit Log("C.foo called");
        A.foo();
    }

    function bar() public {
        emit Log("C.bar was called");
        super.bar();
    }
}

contract D is B, C {
    
}