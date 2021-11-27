# Ownable NFT contract Hardhat Project

[![Merge CI](https://github.com/JoseRodrigues443/ownable-nft-contract-solidity/actions/workflows/merge.yaml/badge.svg)](https://github.com/JoseRodrigues443/ownable-nft-contract-solidity/actions/workflows/merge.yaml)

This project demonstrates an `ERC721` contract usage alongside the `Ownable` access control tooling from openzeppelin.

- [Ownable NFT contract Hardhat Project](#ownable-nft-contract-hardhat-project)
- [How use deploy and use](#how-use-deploy-and-use)
  - [Requirements](#requirements)
  - [Compile](#compile)
  - [Deploy contract](#deploy-contract)
    - [Output](#output)
  - [Mint With not owner (should fail)](#mint-with-not-owner-should-fail)
    - [Output](#output-1)
  - [Mint NFT](#mint-nft)
    - [Output](#output-2)
  - [Add to mobile Wallet:](#add-to-mobile-wallet)
- [Other tooling in the project:](#other-tooling-in-the-project)

# How use deploy and use

The following steps allow for the deploy and use of the `OwnableNFT.sol` contract on the specified network.

## Requirements

- Create a .env file from the example provided (`cp .env.example .env`)
    - Needs Wallet Private and Public account (metamask is a good one to start)
    - Alchemy Node URL
    - Optional: Etherscan api key for better integration on the tool
## Compile

`make compile`

## Deploy contract

```bash

    npx hardhat run scripts/deploy_ownable.ts --network ropsten

```

### Output

```bash

Successfully generated 5 typings!
Compilation finished successfully
Deploying contracts with the account: 0x158BFbb9281794461d670E93b6De0C8a98F79CfE
Account balance: 4238483431681902615
Contract deployed to: 0x645f4bf85aEd84139FB7C1A51CE704E736b91aD4
Account balance: 4233398429733402789


```

## Mint With not owner (should fail)

```bash

    node scripts/mint.js --name OwnableNFT --contract 0x645f4bf85aEd84139FB7C1A51CE704E736b91aD4 --metadata QmSdnyBWHJ2y9cDLHi6mWyX2ND77KnvURckQHsC7SpdS8U --public $ACCOUNT_2_PUBLIC --private $ACCOUNT_2_PRIVATE

```

### Output

```bash

Account:  0x41cC9D5AB0e74Ce6a6998EBC7b7C9805C96dfF0a
The hash of your transaction is:  0xda8fdf2c7ab8829e50e741c59ebab11f6c6128fae3c8885d3e44326928f96673
Check Alchemy's Mempool to view the status of your transaction!
(node:46088) UnhandledPromiseRejectionWarning: Error: Transaction has been reverted by the EVM:
{

```

## Mint NFT

```bash

    node scripts/mint.js --name OwnableNFT --contract 0x645f4bf85aEd84139FB7C1A51CE704E736b91aD4 --metadata QmSdnyBWHJ2y9cDLHi6mWyX2ND77KnvURckQHsC7SpdS8U --public $ACCOUNT_1_PUBLIC --private $ACCOUNT_1_PRIVATE

```

### Output

```bash

Account:  0x41cC9D5AB0e74Ce6a6998EBC7b7C9805C96dfF0a
The hash of your transaction is:  0xda8fdf2c7ab8829e50e741c59ebab11f6c6128fae3c8885d3e44326928f96673
Check Alchemy's Mempool to view the status of your transaction!
(node:46088) UnhandledPromiseRejectionWarning: Error: Transaction has been reverted by the EVM:
{

```

Is possible to see here: <https://ropsten.etherscan.io/tx/0xda8fdf2c7ab8829e50e741c59ebab11f6c6128fae3c8885d3e44326928f96673>


## Add to mobile Wallet:

First see the NFT information on <https://ropsten.etherscan.io/tx/0x413ff4ef38729a4e62455d383d73858113e15ce27604d7039406b5421482b2f6>:

![Foo](https://i.imgur.com/jvA4wg0.png)

First obtain the token on the section "interacted with", to get the contract address (in this case is above also: 0x4AaD4132C0c60bd21f21e52F7Cb85dC320862c05)

And get the TokenID (see section For  ERC-721 TokenID [X] BaseNFT (NFT) and get the X number)

Open metamask on mobile, go to the network, and add the NFT with the same values obtained.


# Other tooling in the project:

Try running some of the following tasks:

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
npx hardhat help
REPORT_GAS=true npx hardhat test
npx hardhat coverage
npx hardhat run scripts/deploy.ts
TS_NODE_FILES=true npx ts-node scripts/deploy.ts
npx eslint '**/*.{js,ts}'
npx eslint '**/*.{js,ts}' --fix
npx prettier '**/*.{json,sol,md}' --check
npx prettier '**/*.{json,sol,md}' --write
npx solhint 'contracts/**/*.sol'
npx solhint 'contracts/**/*.sol' --fix
```
