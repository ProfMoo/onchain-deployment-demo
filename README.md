## Deploy Smart Contract On Base

## Usage

1.

```shell
forge script script/DeployHelloWorld.s.sol:DeployHelloWorld --rpc-url base --broadcast --verify
```

`.env` file must be populated as such:

```env
PRIVATE_KEY=<secret_value>
ETHERSCAN_API_KEY=<secret_value>
RPC_URL=<secret_value>
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
