# GasPredictor DApp

This is a simple decentralized application (DApp) that allows users to submit and view their Ethereum gas price predictions on the blockchain.

## Features

- Submit a predicted gas price (integer) to the Ethereum Sepolia testnet
- Store prediction along with timestamp on-chain via smart contract
- Retrieve and display historical predictions submitted by the user
- Interact with the smart contract via MetaMask and `ethers.js`
- Frontend hosted on GitHub Pages

## Technologies

- Solidity (smart contract)
- HTML + JavaScript (frontend)
- Ethers.js (Ethereum interaction)
- MetaMask (wallet)
- Sepolia Testnet
- GitHub Pages (static site hosting)

## Smart Contract

- **Name**: `GasPredictor`
- **Address**: `0x7ea4a7E139C98D6835429763EE53B10208B14301` (Sepolia)
- **Functions**:
  - `submitPrediction(uint256 _gasPrice)`: Submit a new prediction
  - `getMyPredictions()`: Get all predictions by the caller

## Live DApp

You can try the DApp here:

[https://juliyoona.github.io/gas-oracle-dapp/]

> Make sure your MetaMask is connected to the Sepolia testnet and you have some test ETH.

## Project Structure

gas-oracle-dapp/
├── index.html # Frontend interface
├── GasPredictor.sol # Solidity contract (for reference)
└── test.js # Optional testing script (NOT included in GitHub for security)


## Test Script (local only)

For demonstration, a sample testing script is available (see report):

```js
// Replace with real credentials before using
const provider = new ethers.providers.JsonRpcProvider("https://eth-sepolia.g.alchemy.com/v2/YOUR_ALCHEMY_KEY");
const signer = new ethers.Wallet("YOUR_PRIVATE_KEY", provider);
...
