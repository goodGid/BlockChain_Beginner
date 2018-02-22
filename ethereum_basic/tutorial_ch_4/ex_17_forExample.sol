pragma solidity ^0.4.11;

contract Example4 {
    function forExample() returns (uint) {
        uint n = 0;

        for(uint i = 1; i <= 10; i++) {
            if (i % 3 == 0) {
                 continue;
            }
            n += i;
        } 
        return n;
    }
}