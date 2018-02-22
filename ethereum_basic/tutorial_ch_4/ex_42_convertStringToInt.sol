pragma solidity ^0.4.11;

contract Example4 {
    function convertStringToInt(string s) returns (int) {
        bytes memory b = convertStringToBytes(s);
        int result = 0;
        uint start = 0;
        int phase = 1;

        for(uint i = 0; i < b.length; i++) {
            if((b[i] < byte("0") || b[i] > byte("9"))
            && (b[i] != byte("+") && b[i] != byte("-"))) {
                return 0;
            }
        }

        if(b[0] == byte("-")) {
            phase = -1;
            start = 1;
        }
        else if(b[0] == byte("+")) {
            start = 1;
        }

        for(uint i = start; i < b.length; i++) {
            result += (int(b[i]) - 48) * int(10 ** (b.length - (i + 1)));
        }

        result *= phase;

        return result;
    }  
}