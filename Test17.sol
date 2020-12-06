//sending ethers to a contract

pragma solidity ^0.5.13;

contract Test17{
    
    mapping(address => uint) balances; //map => address to ether balance
    
    function invest() external payable{
        //minimum 100 wei
        if(msg.value < 1000){
            revert(); //stops the transaction
        }
        //500               = 200                 + 300
        balances[msg.sender] = balances[msg.sender] + msg.value;
        
    }
    
    function checkBal() external view returns(uint){
        
        return address(this).balance; //balance in wei for current contract
    }
    
}

