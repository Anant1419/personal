/*

0.5.13 - only this version
^0.5.13  - minimum this version
>0.4.10<0.5.13 - range
public - accesible from outside the contract
returns - type of data i'm supposed to return
return - actual data i'm supposed to return

Log Window
transaction cost : base gas cost
                 : contract deployment cost (32000)
                 : cost of zero and non-zero bytes
                 
execution cost : operation cost (this contract has just one operation hence txn cost > exec cost

Green tick - registered transaction
Just CALL - fetching data
                 
*/

pragma solidity ^0.5.13;

contract Test1{
    
    function printOn() public view returns (string memory){
        return "Testing First Contract";
    }
}
