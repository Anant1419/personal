pragma solidity ^0.5.13;

contract Test10{
    
    enum State{
        waiting, //0 
        ready, //1 
        active //2
        
    }
    
    State public state;
    
    address owner;
    
    modifier onlyOwner{
        
        require(msg.sender == owner);
        _; //ends the modifier
    }
    
    
    constructor() public{
        state = State.waiting;
    }
    
    function makeActive() public{
        state = State.active;
        
    }
    
    
    function isActive() public view onlyOwner returns(bool){
        return state ==State.active;
    }
}
    
    
    
    
    
    
    
    
    
    
    

