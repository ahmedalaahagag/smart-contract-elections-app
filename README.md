## Decentralized elections app

using the etherum block chain, smart contract , solidity , web3 a simple decentralized voting app

## Dependencies

* ethereumjs-testrpc
* web3
* solc

Install missing dependencies with [npm](https://www.npmjs.com/).

## Usage

Run the following commands to open the node console then deploy your contract to the test chain

```
siraj:~/hello_world_voting$ node
> Web3 = require('web3')
> web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:3000"));
> code = fs.readFileSync('voting.sol').toString()
> solc = require('solc')
> compiled = solc.compile(code)
> abiDefinition = JSON.parse(compiled.contracts[':Voting'].interface)
> VotingContract = web3.eth.contract(abiDefinition)
> byteCode = compiledCode.contracts[':Voting'].bytecode
> deployedContract = VotingContract.new(['Trump','Hilary'],{data: byteCode, from: web3.eth.accounts[0], gas: 4700000})
> deployedContract.address
> contractInstance = VotingContract.at(deployedContract.address)
