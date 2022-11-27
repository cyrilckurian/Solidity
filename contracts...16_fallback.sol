//SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.4;

contract FallBack {
    event Log(uint gas);

    fallback() external payable {
        emit Log(gasleft());
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    receive() external payable {
        
    }
}

contract SendToFallback {
    function transferToFallback(address payable _to ) public payable {
        _to.transfer(msg.value);
    }

    function callFallback(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ehter");
    }
}