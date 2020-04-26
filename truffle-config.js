var HDWalletProvider = require("truffle-hdwallet-provider");
const MNEMONIC = 'candy maple cake sugar pudding cream honey rich smooth crumble sweet treat';

module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // for more about customizing your Truffle configuration!
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*" // Match any network id
    },
    develop: {
      port: 8545
    
  }, 

  ropsten: {
    provider: function() {
      return new HDWalletProvider(MNEMONIC, "https://ropsten.infura.io/v3/76024a16994048fab5f50f4d599ff626")
      },
    network_id: 3,
    gas: 4000000      //make sure this gas allocation isn't over 4M, which is the max
    }
  }
};
