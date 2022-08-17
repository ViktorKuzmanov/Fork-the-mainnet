const hre = require("hardhat");

async function main() {

  // We get the contract to deploy
  const IndexFund = await hre.ethers.getContractFactory("IndexFund");
  const indexFund = await IndexFund.deploy();

  await indexFund.deployed();

  console.log("IndexFund deployed to:", indexFund.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
