const hh = require("hardhat");
async function main() {

  console.log("Retrieving deployers...");
  const [deployer] = await hh.ethers.getSigners();
  
  const initialOwner = ["{WALLET_ADDRESS_HERE}"];

  console.log("Deploying AinsteinToken contract via:", deployer.address);
  const token = await hh.ethers.deployContract("AinsteinToken", initialOwner);

  console.log("Ainstein AGI token deployed: ", await token.getAddress());
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });