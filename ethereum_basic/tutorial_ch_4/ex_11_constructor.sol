pragma solidity ^0.4.11;

contract Example4 {
    uint count;
    address from;
    address to;

    function Example4(uint _count, address _from, address _to) {
        count = _count;
        from = _from;
        to = _to;
    }
}