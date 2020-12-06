/*
enum => default numbering starts from 0, similar to structures but have predefined numbers to them, used to define the number of any state
Enumerated Values
*/
pragma solidity ^0.5.13;

contract Test9{
    
    enum State{
        waiting, //0 
        ready, //1 
        active //2
        
    }
    
    State public state;
    
    constructor() public{
        state = State.waiting;
    }
    
    function makeActive() public{
        state = State.active;
        
    }
    
    
    function isActive() public view returns(bool){
        return state ==State.active;
    }
}
