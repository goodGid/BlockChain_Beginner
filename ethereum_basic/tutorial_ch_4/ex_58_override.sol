pragma solidity ^0.4.11;

contract Dad {
    function f() constant returns (uint) {
        return 10;
    }
}

contract Mom {
    function f() constant returns (uint) {
        return 20;
    }
}

contract Child1 is Dad, Mom {}
contract Child2 is Mom, Dad {}
contract Child3 is Mom, Dad {
    function f() constant returns (uint) {
        return 30;
    }
}