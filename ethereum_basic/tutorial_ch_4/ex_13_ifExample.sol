pragma solidity ^0.4.11;

contract Example4 {
    function ifExample() returns (uint){
        uint n = 50;

        if(n > 25) {   // n�� 25���� ū ���ΰ�?
            n++;      // ��(25���� ũ��)�̸� n�� 1 ���� ��ŵ�ϴ�, n = n + 1;
        }
        else if(n == 25) {
            n += 10;  // ��(n�� 25�� ���ٸ�) n�� 10�� ���մϴ�, n = n + 10;
        }
        else {
            n--;     // ����(25���� �۴ٸ�)�̸� n�� 1 ���� ��ŵ�ϴ�, n = n - 1;
        }

        return n;
    }
}