pragma solidity ^0.4.11;

contract Example4 {
    function f() {
        var (x, y, z) = (1, 2, true);
        (x, y) = (y, x);
        var (a, b) = (x, y);
    }
}