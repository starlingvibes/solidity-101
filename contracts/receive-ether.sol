pragma solidity 0.5.1;

contract MyContract {
    mapping(address => uint256) public balances;
    address wallet;

    function buyToken() public {
        // buy a token
        balances[msg.sender] += 1;
        wallet.transfer(msg.value);
        // send ether to wallet
    }   
}