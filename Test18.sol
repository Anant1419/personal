/*

concrete class/contract - for all the function, function body id present
abstract class/contract - among all contracts, atleast one function body is not present
interface/contract - no body is defined for any function. we can't define enum, state variables, 
                    constructors, strings

it provides a customisable or reusable approach tp our contracts

*/

pragma solidity ^0.5.13;
//abstract contract
contract member{
    
    string name;
    uint age;
    
    function setName() public returns(string memory);
        
    
    
    function setAge(uint _age) public returns(uint){
        age = _age;
        return age;
        
        
    }
    
}

contract stud is member{
    
    function setName() public returns(string memory){
        
        return "This is sample abstract contract";
    }
}
