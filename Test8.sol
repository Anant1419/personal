pragma solidity ^0.5.13;

contract Test8{
    address public owner;
    
    constructor() public{
        owner = msg.sender;
    }
    
    function getOwner() public view returns(address){
        return owner;
    }
    
    function getBalance() public view returns(uint256){
        return owner.balance;
    }
    function decodeInput() public pure returns(bytes32 result){
        return keccak256("blockchain");
    }
    
}
