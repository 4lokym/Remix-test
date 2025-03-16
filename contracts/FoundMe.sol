// SPDX-License-Identifier: MIT

pragma solidity >0.6.0 <0.9.0;


import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

contract FoundMe{

    mapping (address => uint256) public adrressToAmountFounded;

    function found() public payable{
        adrressToAmountFounded[msg.sender] += msg.value;
    }

    function getVersion() public view returns (uint256){
        AggregatorV3Interface pricefeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        return pricefeed.version();
    }

    function getPrice() public view returns(uint256){
        AggregatorV3Interface pricefeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (,int256 answer,,,) = pricefeed.latestRoundData();
        return uint(answer);
    }
}
