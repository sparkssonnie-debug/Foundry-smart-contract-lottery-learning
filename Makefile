Include .env 

# how to write the command - make (deploy-anvil) 
# shortcuts for super long commands 

deploy-anvil:
	forge script script/DeployFundMe.s.sol --rpc-url $(ANVIL_RPC_URL) --account practicekey --sender $(sender) --broadcast -vvvv 

deploy-sepolia:
	forge script script/DeployFundMe.s.sol --rpc-url $(SEPOLIA_RPC_URL) --account practicekey --sender $(sender) --broadcast -vvvv

deploy-mainnet:
	forge script script/DeployFundMe.s.sol --rpc-url $(MAINNET_RPC_URL) --account practicekey --sender $(sender) --broadcast -vvvv --verify

coverage-txt: 
	forge coverage --report debug > coverage.txt 