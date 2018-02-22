pragma solidity ^0.4.11;

contract Example4 {
    event myEvent(
        address indexed _from,
        address indexed _to,
        uint _amout
    );

    function pay(address _to) payable {
        myEvent(msg.sender, _to, msg.value);
    }
}