//SPDX-License-Identifier: UNLICENSE
pragma solidity ^0.8.4;

contract structdemo{
    struct Car {
        string model;
        uint year;
        address owner;

    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function examples() external {
        Car memory toyota = Car("mk4",1990,msg.sender);
        Car memory lambo = Car({year:1994,model:"lambo23",owner: msg.sender});// using key value pairs
        Car memory tesla; // will have default values
        tesla.model = "TeslaSX";
        tesla.year = 2010;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferrari",2020,msg.sender));

        // Car memory _car = cars[0];
        // _car.model;
        // _car.year; // Can't update the value when using memory 
        // _car.owner;

        // We use storage for making changes because while using memory , after the execution 
        // the changes will not be saved to the original, but using storage all changes made
        // is saved to the original data
        Car storage _car2 = cars[0];
        _car2.year = 1445;
        delete _car2.owner; // reset the owner to its default value of Car struct at index 0

        delete cars[1]; // resets all the value of the Car to default struct at index 1


    }
}