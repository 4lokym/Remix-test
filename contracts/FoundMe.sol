// SPDX-License-Identifier: MIT

pragma solidity >=0.6.6 <0.9.0;

contract FoundMe{

    mapping (address => uint256) public adrressToAmountFounded;

    function found() public payable{
        adrressToAmountFounded[msg.sender] += msg.value;
    }
}
