pragma solidity ^0.4.11;

contract Example4 {
    function indexOf(string fullString, string subString) returns (int) {
        bytes memory fullBytes = bytes(fullString);
        bytes memory subBytes = bytes(subString);
        uint same = 0;

        if(fullBytes.length < 1 || subBytes.length < 1 
          || subBytes.length > fullBytes.length) {
            return -1;
        }
        
        for(uint i = 0; i <= fullBytes.length - subBytes.length; i++)
        {
            if(fullBytes[i] == subBytes[0]) {
                same = 1;
                
                for(uint j = 1; j < subBytes.length; j++) {
                    if(fullBytes[i + j] == subBytes[j]) {
                        same++;
                    }
                    else {
                        same = 0;
                        break;
                    }
                }
                
                if(same == subBytes.length) {
                    return int(i);
                }
            }
        }
        
        return -1;
    }
}