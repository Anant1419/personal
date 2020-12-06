pragma solidity ^0.5.0;

contract Token {
    function balanceOf(address _owner) public view returns (uint256 balance);

    function transfer(address _to, uint256 _value)
        public
        returns (bool success);

    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    ) public returns (bool success);

    function approve(address _spender, uint256 _value)
        public
        returns (bool success);

    function allowance(address _owner, address _spender)
        public
        view
        returns (uint256 remaining);

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(
        address indexed _owner,
        address indexed _spender,
        uint256 _value
    );
}

contract StandardToken is Token {
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 public totalSupply;

    string public name;
    uint256 public decimals;
    string public symbol;
    uint256 price = 0.01 ether; /*The requirment of this smart contract is to send 100 Tokens for 1 Ether */
    uint256 tokensToBeSend;
    address owner;

    constructor() public {
        owner = msg.sender;
        name = "SnapperCoin";
        decimals = 8;
        symbol = "SNC";
        totalSupply = 100000000;
        balances[owner] = totalSupply;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "Only owner can execute this");
        _;
    }

    function transfer(address _to, uint256 tokensToBeSend)
        public
        onlyOwner
        returns (bool success)
    {
        require(
            balances[msg.sender] >= tokensToBeSend,
            "Owner does NOT have enough Tokens to be send to Investor"
        );
        balances[owner] -= tokensToBeSend;
        balances[_to] += tokensToBeSend;
        emit Transfer(msg.sender, _to, tokensToBeSend);
        return true;
    }

    function balanceOf(address _owner) public view returns (uint256) {
        return (balances[_owner]);
    }

    function transferFrom(
        address from,
        address to,
        uint256 value
    ) public returns (bool success) {
        require(value <= balances[from]);

        balances[from] -= value;
        balances[to] += value;
        emit Transfer(from, to, value);
        return true;
    }

    function approve(address spender, uint256 value)
        public
        returns (bool success)
    {
        emit Approval(msg.sender, spender, value);
        return true;
    }

    function allowance(address _owner, address _spender)
        public
        view
        returns (uint256 remaining)
    {
        return allowed[_owner][_spender];
    }
}

