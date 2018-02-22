pragma solidity ^0.4.11;

contract Example4 {
    mapping (address => uint) public balances; 
    
    function setBalance(uint input) {
        balances[msg.sender] = input;
    } 
}