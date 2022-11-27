//SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.4;

contract gas_convert{
    uint num;
    uint ether_val;
    uint wei_val;
    uint gwei_val;

    function get_value() public view returns(uint,uint,uint) {
        return (ether_val,wei_val,gwei_val);
    }
    function set_value(uint _num) public{
        num = _num;
        ether_val = num;
        wei_val = num * 1e18;
        gwei_val = num * 1e9;
    }
}