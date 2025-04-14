// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom {

    address payable public owner;

    enum Status {Vacant, Occupied}

    Status public currentStatus;

    event Occupy(address _occupant, uint _amount);

    constructor (){
        owner = payable(msg.sender);
        currentStatus = Status.Vacant;
    }

    modifier checkFunds(uint _amount) {
        require(msg.value >= _amount, "Insufficient funds, please fund your account and try again");
        _;
    }

    modifier checkVacancy {
        require(currentStatus == Status.Vacant, "Room is occupied, check in again some other day");
        _;
    }

    function bookRoom() public payable checkFunds(20 ether) checkVacancy  {
        
        currentStatus = Status.Occupied; 
        
        owner.transfer(msg.value);
        //(bool sent, bytes memory data) = owner.call{value: msg.value}("");
        //require(true);

        emit Occupy(msg.sender, msg.value);
    }

}