pragma solidity ^0.4.11;

contract Example4 {
    function convertIntToString(int n) returns (string) {
        uint length = 10;
        int i = 0; int d; int t; int v = n;
        
        if(n < 0) {
            v *= -1;
        }

        for(uint j = 1; j <= length; j++) {
            d = int(10 ** (length - j));
            
            t = v % d;
            
            if((v - t) / d > 0) {
                length = (length - j) + 1;
                
                break;
            }
        }

        bytes memory buffer;
        if(n < 0) {
            buffer = new bytes(length + 1);
            
            buffer[i] = byte("-");
            i = 1;
        }
        else {
            buffer = new bytes(length);
        }

        for(j = 1; j <= length; j++) {
            d = int(10 ** (length - j));
            
            t = v % d;
            
            if((v - t) / d > 0) {
                buffer[i] = byte(((v - t) / d) + 48);
                
                v -= ((v - t) / d) * int(10 ** (length - j));
                i++;
            }
        }
        
        return convertBytesToString(buffer);
    }
}