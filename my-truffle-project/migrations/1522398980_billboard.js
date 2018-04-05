var Billboard = artifacts.require('Billboard')

module.exports = function(deployer) {
  let charity = web3.eth.accounts[1]
  deployer.deploy(Billboard, charity)
};
