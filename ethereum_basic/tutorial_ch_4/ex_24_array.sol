pragma solidity ^0.4.11;

contract Example4 {
    uint32[3] globalStaticArray = [1, 2, 3];
    uint8[] globalDinamicallyArray = new uint8[](7);
    uint256[3] globalErrorArray = [1234, 5678, 9012];

    function arrayExample() {
        uint8[3] memory localStaticArray = [1, 2, 3];
        uint8[] memory localErrorArray = new uint8[](localStaticArray.length);
        uint8[] localDinamicallyArray = globalDinamicallyArray;
    }
}