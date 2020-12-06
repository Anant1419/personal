pragma solidity ^0.5.13;

contract Test11{
// Declare the event
    event Trading(
        uint indexed date, //indexed is for filtering, can't use it for more than 3 fields
        address indexed from,
        address indexed to,
        uint amount 
    );
    
//emitting the event
    function Trade(address to, uint amount) external{
        emit Trading(now, msg.sender, to, amount);
        
    }
}
