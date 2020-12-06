pragma solidity ^0.5.13;
//interface contract
interface ERC20{
    function setName() external returns(string memory);
    function setAge(uint _age) external returns(uint);
}

contract myContract is ERC20{
    
    function setName() public returns(string memory){
        return "This is sample abstract contract";
    }
    function setAge(uint _age) public returns(uint){
        uint age = _age;
        return age;
    }
}
