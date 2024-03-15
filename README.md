# Ainstein ERC-20 Token
This repo contains the smart contract for Ainstein's ERC-20 token. This smart contract is based on OpenZeppelin's industry standard contracts.

### Installation
Run the following to install **[hardhat](https://github.com/NomicFoundation/hardhat)**:
```shell
npm i --save-dev hardhat
```

### Build and Deploy
Run the following **hardhat** tasks:

```shell
# Compile the contract
npx hardhat compile

# Deploy the contract (replace 'sepolia' with target network name)
npx hardhat run --network sepolia scripts/deploy.js

# Verify Source Code on Etherscan
npx hardhat verify --network sepolia [CONTRACT_ADDRESS] [OWNER_ADDRESS]
```