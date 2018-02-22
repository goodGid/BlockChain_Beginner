pragma solidity ^0.4.11;

contract Example4 {
    function byteExample() returns (byte and, byte or, byte xor, byte negation) {
        byte v1 = 0x00; // 00000000 = 0
        byte v2 = 0xff; // 11111111 = 255
        
        and = v1 & v2;
        or = v1 | v2;
        xor = v1 ^ v2;
        negation = ~v1;
    }
}