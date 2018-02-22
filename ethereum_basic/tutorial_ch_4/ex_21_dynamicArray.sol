pragma solidity ^0.4.11;

contract Example4 {
    uint[3] globalStaticArray = [1, 2, 3];
    uint[] globalDynamicallyArray = [1, 2, 3];
    uint[] globalDynamicallyArrayEmpty;
    
    function arrayExample() {
        uint[3] localStaticArray1;      // localStaticArray1.length = 3;
        uint[4**2] localStaticArray2;   // localStaticArray2.length = 16;
        uint[] localDynamicallyArray = new uint[](8);	// localDynamicallyArray = 8;
        uint[][10] localDynamically2DimensionalArray;
    }
}