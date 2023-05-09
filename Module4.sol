// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

contract FoxyPeso is Ownable, Pausable {

    string public constant name = "Foxy Peso";
    string public constant symbol = "FP";
    uint8 public constant decimals = 18;
    uint256 public totalSupply;

    mapping(address => uint256) public balances;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Mint(address indexed owner, uint256 value);
    event Burn(address indexed from, uint256 value);

    function mint(address owner, uint256 value) public onlyOwner {
        totalSupply += value;
        balances[owner] += value;
        emit Mint(owner, value);
    }

    function burn(address from, uint256 value) public onlyOwner {
        require(balances[from] >= value, "The balance is insufficient.");
        balances[from] -= value;
        totalSupply -= value;
        emit Burn(from, value);
    }

    function transfer(address to, uint256 value) public whenNotPaused {
        require(balances[msg.sender] >= value, "Your balance is insufficient.");
        require(to != address(0), "The recipient's address is invalid.");

        balances[msg.sender] -= value;
        balances[to] += value;
        emit Transfer(msg.sender, to, value);
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }
}
