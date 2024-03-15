require("@nomicfoundation/hardhat-toolbox");

const INFURA_API_KEY = "YOUR_INFURA_API_KEY";
const ETHERSCAN_API_KEY = "YOUR_ETHERSCAN_API_KEY";

// BEWARE: NEVER put real Ether into testing accounts
const SEPOLIA_PRIVATE_KEY = "YOUR_SEPOLIA_API_KEY"; 

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",
  networks: {
    sepolia: {
      url: `https://sepolia.infura.io/v3/${INFURA_API_KEY}`,
      accounts: [SEPOLIA_PRIVATE_KEY],
    }
  },
  etherscan: {
    apiKey:  {
      sepolia: [ETHERSCAN_API_KEY]
    }
  },
  sourcify: {
    enabled: true
  }
};