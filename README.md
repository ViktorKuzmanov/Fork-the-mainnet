# Fork the mainnet
Learn how to Fork the mainnet in hardhat

## Technology Stack & Dependencies

- Solidity (Writing Smart Contract)
- Javascript (Game interaction)
- [Infura](https://www.alchemy.com/) As a node provider
https://infura.io/
- [NodeJS](https://nodejs.org/en/) To create hardhat project and install dependencis using npm


### 1. Clone/Download the Repository

### 2. Install Dependencies:
```
npm install
```

### 3. Fork the ethereum mainnet 
```
npx hardhat node --fork https://mainnet.infura.io/v3/<YourInfuraProjectId>
```

### 4. Deploy the contract 
```
npx hardhat run scripts/deploy.js
```

### 5. Interact with deployed contract on Hardhat network
```
npx hardhat console

const MyContract = await ethers.getContractFactory("Number");
const contract = await MyContract.attach("addressOfContract");
(await contract.number()).toString();