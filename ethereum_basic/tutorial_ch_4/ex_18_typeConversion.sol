pragma solidity ^0.4.11;

contract Example4 {
    function convertExample() returns (uint) {
        int8 x = -5;		// x is -5 == 0xFB
        uint32 y = uint32(x);	// y is 0xFFFFFFFB == 4294967291

        uint32 a = 0x12345678;	// a is 0x12345678 == 305419896
        uint16 b = uint16(a);	// b is 0x5678 == 22136
    }
}