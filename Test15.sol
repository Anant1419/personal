//calling functions from other contracts

pragma solidity ^0.5.13;

contract A{
    address addrB;
    
    function getAddress(address _addrB) external{
        addrB = _addrB;
    }
    
    function callingTestFucn() external view returns(string memory){
        
        B b = B(addrB); //creating a reference variable for contract B
        return b.testFunc(); //calling the below function
    }
}

contract B{
    function testFunc() external pure returns (string memory){
        return "test function here";
    }
    
}

