//SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.4;

contract Loop {
    function loop() public pure{
        //for loop 
        for (uint i = 0; i<1000;i++){
            //i%=10;
            if( i == 3){
                //skip this iteration
                continue;
            }
            // if(i==5){
            //     //exit from the loop
            //     break;
            // }
        }

        //while loop
        uint j;
        while(j < 10){
            j++; //j=j+1
        }

        do{
            j = j * 2;
        } while (j<20);
    }
}