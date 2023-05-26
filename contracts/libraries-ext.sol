pragma solidity 0.5.1;

contract MyContract {
    uint public value;

    function calculate(uint256 _value1, uint256 _value2) public {
        value = Math.divide(_value1, _value2);
    }

}