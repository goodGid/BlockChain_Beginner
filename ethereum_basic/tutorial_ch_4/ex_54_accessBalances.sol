pragma solidity ^0.4.11;

contract Example4 {
    mapping (address => uint) public balances; 
    
    function setBalance(uint input) {
        balances[msg.sender] = input;
    } 
}

contract BalanceSeeker {
    function accessBalance(uint input) returns (uint) {
        Example4 e = new Example4();
        e.setBalance(input);
        return e.balances(this);
    }
}