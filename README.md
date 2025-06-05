# Coindexer Demo

## Demo

Hi my name is Shane, I'm on the CDP team. Today I'm going to demo the Coindexer project

For this demo, I'm going to act as a typical web3 developer deploying a fresh new smart contract. Right after I deploy, I'm going to interact with the contract. Then, I want to show the outcome of those interactions in my webapp. The biggest pain point for developers usually came at this stage - how do they display the output of smart contract interactions back to their users? Existing solutions either lacked freshness (~30s) OR required a ton of additional infrastructure (ex: The Graph, Ponder)

So let's get started:

### Deploy

```shell
forge script script/DeployEventDemo.s.sol:DeployEventDemo --rpc-url base --broadcast --verify
```

`.env` file must be populated as such:

```env
PRIVATE_KEY=<secret_value>
ETHERSCAN_API_KEY=<secret_value>
RPC_URL=<secret_value>
```

### Call

```bash
CONTRACT_ADDRESS=0xYourContractAddress MESSAGE="I love indexing :)" forge script script/InteractHelloWorldCLI.s.sol:InteractHelloWorldCLI --rpc-url base --broadcast
```

### View

```SQL
SELECT
    parameters ['sender'] AS sender,
    parameters ['message'] AS message,
    parameters ['timestamp'] AS timestamp,
    address AS contract_address
FROM base.events
WHERE event_signature = 'LogMessage(address,string,uint256)'
LIMIT 10;
```

## Additional Commands

### Build

```shell
forge build
```

### Test

```shell
forge test
```

### Format

```shell
forge fmt
```

### Gas Snapshots

```shell
forge snapshot
```

### Anvil

```shell
anvil
```

### Cast

```shell
cast <subcommand>
```

### Help

```shell
forge --help
anvil --help
cast --help
```
