// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // int32 public myInt = 1;
    // uint256 public myUint256 = 2;
    // string public myString = "Hello, world!";
    // bytes32 public myBytes32 = "MyBytes32";
    // address public myaddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;


    // struct MyStruct{
    //     string name;
    //     uint age;
    // }


    // MyStruct public mystruct = MyStruct("Stephen", 24);

   uint[] public intArry = [1,2,3];
   string[] public stringArray = ["Apple", "Orange", "Banana"];
   uint[][] public array2D = [[1,2,3], [4,5,6],[7,8,9]];
   string[] public array;

   function addValue(string memory name) public {
    array.push(name);
   }

   function countValues() public view returns(uint){
    return array.length;
   }
   
}