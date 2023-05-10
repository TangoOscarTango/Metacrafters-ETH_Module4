# Foxy Peso Token Contract
A simple, customizable ERC20-like token on the Ethereum blockchain.

## Description

The Foxy Peso Token (FP) is an Ethereum-based digital currency created using the Solidity language. 
The purpose of this project is to demonstrate the implementation of a basic, customizable token 
with core functionalities such as minting, burning, and transferring tokens. Additionally, it 
includes access control and a pause/unpause mechanism for enhanced security and flexibility.



## Getting Started

### 1.) Installing
#### A.) Download or clone this repository from GitHub:

```javascript
git clone [https://github.com/TangoOscarTango/MetacraftersModule4.git](https://github.com/TangoOscarTango/Metacrafters-ETH_Module4.git)
```

#### B.) Install the required dependencies:

```javascript
npm install
```


### 2.) Executing the program

   #### A.) To run this program, start by compiling the smart contract using Truffle or Hardhat:

```javascript
//Truffle
truffle compile
```

or

```javascript
//Hardhat
npx hardhat compile
```



   #### B.) Deploy the smart contract to a local or public testnet:
   
```javascript
//Truffle
truffle migrate --network development
```

or

```javascript
//Hardhat
npx hardhat run --network rinkeby scripts/deploy.js
```

#### Once you have deployed the contract, you can interact with it by calling the Mint or Burn functions with the desired address and value of tokens you want to create or destroy.


## Help

If you encounter any issues or require assistance, please refer to the Solidity documentation or Ethereum Stack Exchange for guidance.

```javascript
//Truffle
truffle help
```

or

```javascript
//Hardhat
npx hardhat help
```



## Author

Github: [TangoOscarTango](https://github.com/TangoOscarTango/)

Twitter: [@Brunkle72](https://twitter.com/Brunkle72)



## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
