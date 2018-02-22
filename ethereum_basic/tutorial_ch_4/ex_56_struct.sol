pragma solidity ^0.4.11;

contract Example4 {
    struct errorStruct {
        uint32 data;
        // errorStruct friend; // error!
        // mapping (errorStruct => uint) wrongMapping; // error!
    }

    struct tree {
        uint32 data;
        tree[] children;
    }

    struct binaryTree {
        uint32 data;
        mapping (bool => tree) children;
    }
}