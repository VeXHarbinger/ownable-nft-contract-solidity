.PHONY: all test clean

compile:
	npx hardhat compile

test-report:
	REPORT_GAS=true npx hardhat test

test:
	npx hardhat test

size:
	npx hardhat size-contracts
	echo "A contract should be less than 24KB"

console:
	npx hardhat console

# TODO: npx hardhat verify --network mainnet DEPLOYED_CONTRACT_ADDRESS "Constructor argument 1"