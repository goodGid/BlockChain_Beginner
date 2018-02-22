pragma solidity ^0.4.11;

contract Example4 {
    function replace(string fullString, string oldString, string newString)   returns (string) {
        int start = indexOf(fullString, oldString);

        if(start < 0) {
            return fullString;
        }

        bytes memory fullBytes = bytes(fullString);
        bytes memory subBytes = bytes(newString);
        
        for(uint i = 0; i < subBytes.length; i++) {
            fullBytes[i + uint(start)] = subBytes[i];
        }
        
        return string(fullBytes);
    }
}