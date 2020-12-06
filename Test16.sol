//calling functions from different contracts using import statement

pragma solidity ^0.5.13;
import "./Test16_2.sol";

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

