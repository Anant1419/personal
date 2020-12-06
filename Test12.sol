// Inheritance
//multilevel Inheritance


pragma solidity ^0.5.13;

contract Parent{
    
function getName() public pure returns (string memory){
    return "From Parent Contract";
}   
    
    
}

contract Child is Parent{
    function getName() public pure returns (string memory){ //function overriding
        return "From Child Contract";
        
    }
    
}
