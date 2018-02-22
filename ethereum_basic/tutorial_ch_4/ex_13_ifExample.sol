pragma solidity ^0.4.11;

contract Example4 {
    function ifExample() returns (uint){
        uint n = 50;

        if(n > 25) {   // n이 25보다 큰 수인가?
            n++;      // 참(25보다 크면)이면 n을 1 증가 시킵니다, n = n + 1;
        }
        else if(n == 25) {
            n += 10;  // 참(n이 25와 같다면) n에 10을 더합니다, n = n + 10;
        }
        else {
            n--;     // 거짓(25보다 작다면)이면 n을 1 감소 시킵니다, n = n - 1;
        }

        return n;
    }
}