pragma solidity ^0.4.11;

contract SimpleToken {
    address owner;
// 미스트 브라우저가 토큰을 인식하게 만드는 변수들
    string public constant name="Simple Token";
    string public constant symbol="ST";
    uint8 public constant decimals=0;
// 계좌가 가지고 있는 토큰의 양
    mapping (address => uint) public balanceOf;

    event Transfer(address from, address to, uint value);

    function transfer(address _to, uint _value) {
        address _from= msg.sender;
        require(_to != address(0));                               
        require(balanceOf[_from] >= _value);               
        balanceOf[_from] -= _value;                    
        balanceOf[_to] += _value;                         
        Transfer(_from, _to, _value);
    }
    function SimpleToken() {
        balanceOf[msg.sender]= 1000000000000000;
    }
    function killcontract(){
        if(owner==msg.sender)
            suicide(owner);
    }
}