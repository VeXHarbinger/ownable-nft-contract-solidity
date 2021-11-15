.PHONY: all test clean

compile:
	npx hardhat compile

test:
	REPORT_GAS=true npx hardhat test

test-admin:
	REPORT_GAS=true npx hardhat test --no-compile test/administered_cost_managment.ts

size:
	npx hardhat size-contracts
	echo "A contract should be less than 24KB"

console:
	npx hardhat console

# TODO: npx hardhat verify --network mainnet DEPLOYED_CONTRACT_ADDRESS "Constructor argument 1"