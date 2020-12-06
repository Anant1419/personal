pragma solidity ^0.5.15;

contract Test2{
    
    int data; //variable   
    
    function set(int userData) public{
      data = userData;        
    }   
    
    function get() public view returns(int){      
        return data;
        
    }
    
    
}
