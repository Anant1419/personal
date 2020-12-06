/*

Error Types

-assert - should never evaluate to false always be true, only positive conditions
        - if it evaluates to true still consumes all the gas

-require - validate inputs, pre-conditions and outputs
         - doesn't consume all the gas

-revert - similar to require
        - preferred for more complex operations

*/

pragma solidity ^0.5.13;

contract Bank{
    
    uint balance;
    uint public MAX_AMOUNT = 2**256-1;
    
    constructor() public{
        balance = 100; // minimum balance or the starting balance
    } 
    
    function checkBalance() public view returns(uint){
        return balance;
    }
    
    function deposit(uint amount) public{
        //handling overflow
        uint oldbalance = balance;
        uint newBalance = balance + amount;
        require(newBalance >= oldbalance, "Overflow Cash");
        
        balance = newBalance;
        assert(balance >= oldbalance);
    }
    
    function withdraw(uint amount) public{
        // handling underflow
        uint oldbalance = balance;
        
        if(balance <= amount){
            revert("underflow cash");
        }
        
        balance = balance - amount;
        
        assert(balance <= oldbalance);
    }
    
}
