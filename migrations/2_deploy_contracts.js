var SampleCrowdsale = artifacts.require("./SampleCrowdsale.sol");

module.exports = function(deployer) {
  deployer.deploy(SampleCrowdsale);
};
