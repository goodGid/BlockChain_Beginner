pragma solidity ^0.4.11;

contract Example4 {
    function exampleAddress() {
        address sender = this;
        address recipient = 0xABC;

        recipient.transfer(5);
    }
}