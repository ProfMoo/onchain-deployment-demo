# Onchain Indexing Demo

## Deploy

```shell
forge script script/DeployEventDemo.s.sol:DeployEventDemo --rpc-url base --broadcast --verify
```

`.env` file must be populated as such:

```env
PRIVATE_KEY=<secret_value>
ETHERSCAN_API_KEY=<secret_value>
RPC_URL=<secret_value>
```

## Call

```bash
CONTRACT_ADDRESS=0xYourContractAddress MESSAGE="I love indexing :)" forge script script/SendEventLogMessage.s.sol:SendEventLogMessage --rpc-url base --broadcast
```

# Additional Commands

## Build

```shell
forge build
```

## Test

```shell
forge test
```

## Format

```shell
forge fmt
```

## Gas Snapshots

```shell
forge snapshot
```

## Anvil

```shell
anvil
```

## Cast

```shell
cast <subcommand>
```

## Help

```shell
forge --help
anvil --help
cast --help
```
