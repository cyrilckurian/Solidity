//SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.4;

contract Array{
    //Array - dynamic or fixed size
    //Initialization
    uint[] public nums;
    uint[4] public nums_fixed;
    uint[] public nums2 = [1,3,8];
    uint[3] public nums_fixed2 = [34,53,12];

    function examples() external {
        nums2.push(4); // [1,3,8,4]
        uint X = nums[1];
        nums2[2] = 777; // [1,3,777,4]
        delete nums2[1]; //[1,0,777,4]
        nums2.pop(); // [1,0,777]
        uint len = nums2.length; // To find length of array nums2
        
        // create arary in memory 

        uint[] memory a = new uint[](5);
        a[1] = 123;

    }

    function returnArray() external view returns (uint[] memory){
        return nums2;
    }
}