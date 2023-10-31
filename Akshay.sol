// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract AkshayToken {
    string public tokenName = "Akshay";
    string public tokenAbbrv = "AK";
    uint256 public totalSupply = 0;

    //Maps address to uint value
    mapping(address => uint256) public balances;

    function mint(address _address, uint256 _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    function burn(address _address, uint256 _value) public {
        require(balances[_address] >= _value, "Insufficient Balance");
        totalSupply -= _value;
        balances[_address] -= _value;
    }
}
