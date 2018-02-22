pragma solidity ^0.4.11;

contract Example4 {
    function mergeStrings(string s1, string s2) returns (string) {
        bytes memory d1 = bytes(s1);
        bytes memory d2 = bytes(s2);
        
        bytes memory result  = new bytes(d1.length + d2.length);
        for(uint n = 0; n < d1.length; n++) {
            result[n] = d1[n];
        }
        
        uint i = d1.length;
        for(n = 0; n < d2.length; n++) {
            result[i + n] = d2[n];
        }
        
        return string(result);
    }
}