pragma solidity ^0.4.11;

contract Example4 {
    function conversionExample() returns (uint) {
        uint32 a = 0x12345678; // a has uint32 type
        var b = a; // b has also uint32 type 
        var c = 1; // c has uint8 type

        for (var i = 0; i < 1234; i++) {
            // This loop is infinite since i has uint8 type and is always smaller than 1234
        }
    }
}