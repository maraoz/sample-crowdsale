'use strict';

var SampleCrowdsale = artifacts.require('../contracts/SampleCrowdsale.sol');

contract('SampleCrowdsale', function(accounts) {
  let token;

  beforeEach(async function() {
    token = await SampleCrowdsale.new({from: accounts[0]});
  });

  it('should have a symbol', async function() {
    let symbol = await token.symbol();
    assert.equal(symbol, 'SCS');
  });

});

