// Inheritance - passing values to parent constructor

pragma solidity ^0.5.13;

contract member{
    
    string public name;
    uint public age;
    uint private salary;

constructor(string memory _name, uint _age) public{
    name = _name;
    age = _age;
}
    
    function getName() public view returns (string memory){
        return name;
    }
    
    function getAge() public view returns (uint){
        return age;
    }
    
}

contract student is member("new member", 456){
    function identify() public pure returns(string memory){
        return "This is Identity";
    }
    
}
