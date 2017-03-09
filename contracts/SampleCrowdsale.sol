pragma solidity ^0.4.8;


import "zeppelin/token/StandardToken.sol";


contract SampleCrowdsale is StandardToken {

  string public name = "SampleCrowdsale";
  string public symbol = "SCS";
  uint public decimals = 18;

  function () payable {
    createTokens(msg.sender);
  }

  function createTokens(address recipient) payable {
    if (msg.value == 0) {
      throw;
    }

    uint tokens = safeMul(msg.value, 500);

    totalSupply = safeAdd(totalSupply, tokens);
    balances[recipient] = safeAdd(balances[recipient], tokens);
  }

}
