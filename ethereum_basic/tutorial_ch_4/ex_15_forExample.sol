pragma solidity ^0.4.11;

contract Example4 {
    function forExample() returns (uint) {
        uint n = 0;

        for(uint i = 0; i < 1000; i++) {
            n += (i + 1);
        }

        return n;
    }
}