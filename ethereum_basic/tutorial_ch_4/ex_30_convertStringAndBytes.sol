pragma solidity ^0.4.11;

contract Example4 {
    function convertBytesToString(bytes b) returns (string) {
        return string(b);
    }
    
    function convertStringToBytes(string str) returns (bytes) {
        return bytes(str);
    }

    function convertByteArrayToString(byte[] b) returns (string) {
        bytes memory buffer = new bytes(b.length);
        for(uint n = 0; n < buffer.length; n++) {
            buffer[n] = b[n];
        }
        
        return string(buffer);
    }

    function convertStringToByteArray(string str) returns (byte[]) {
        bytes memory d = bytes(str);
        byte[] memory buffer = new byte[](d.length);
        
        for(uint i = 0; i < buffer.length; i++) {
            buffer[i] = byte(d[i]);
        }
        
        return buffer;
    }
}