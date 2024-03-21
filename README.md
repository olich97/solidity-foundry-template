## Solidity Foundry Template

A template for solidity smart contract development with [foundry](https://book.getfoundry.sh/).
> Full article: https://olich.me//post/smart-contract-solidity-development-with-foundry

## Getting Started
Click [`Use this template`](https://github.com/olich97/solidity-foundry-template/generate) on Github to create a new repository with this repo as the initial state.

Or run (also works for existing projects):
```shell
forge init --template https://github.com/soliditylabs/forge-erc20-template
git submodule update --init --recursive
forge install
```

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test -vvv
# with gas report
$ forge test -gas-report
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
# To load the variables in the .env file
$ source .env
# To deploy and verify our contract
$ forge script script/DeployMyToken.sol:DeployMyTokenScript --rpc-url $SEPOLIA_URL --broadcast --verify -vvvv
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
