// SPDX-License-Identifier: MIT

pragma solidity 0.8.7;

contract test2{

mapping(address => uint) Balances;

function getBalance(address _monAddresse) public view returns(uint) {

    return Balances[_monAddresse];

    }

receive() external payable{
    //msg.value
    //msg.sender
    Balances[msg.sender] = msg.value;
    }
}