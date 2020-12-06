pragma solidity ^0.5.13;

contract A{
    function Test() public pure returns (string memory){
        return "A";
    }
    
}

contract B{
    function Test() public pure returns (string memory){
    return "B";
    }
}

contract C is A,B{} //multiple inheritance, moves from right to left i.e B first

contract D is B,A{}

contract E is A,C{}
