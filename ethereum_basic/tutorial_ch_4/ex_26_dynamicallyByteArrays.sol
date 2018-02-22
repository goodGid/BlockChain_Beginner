pragma solidity ^0.4.11;

contract Example4 {
    function byteExample() {        
        bytes2 staticByteArray;
        staticByteArray = "staticByteArray";

        bytes memory dynamicByteArray = new bytes(2);
        dynamicByteArray = "dynamicByteArray";
    }
}