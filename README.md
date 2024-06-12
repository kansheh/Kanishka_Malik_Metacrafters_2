## SimpleToken: A Beginner's Guide to Creating and Managing Tokens
SimpleToken is a nifty Solidity smart contract specifically created to make token management on the Ethereum blockchain a breeze. 
It's got all the bells and whistles you need for minting and burning tokens, making it super efficient and reliable for a whole bunch of token-based applications. 
The main goal of this project is to lay down a rock-solid foundation for decentralized token operations.

## Description

SimpleToken is a basic Solidity smart contract that makes it super easy to create and destroy tokens. 
With this contract, users can mint new tokens, increasing the token supply, or burn tokens to decrease the total supply. 
The contract keeps track of important token details like the name, symbol, and total supply using a mapping system. 
It also maintains a record of token balances associated with different addresses.
The mint function is responsible for generating new tokens and assigning them to a specific address. 
On the other hand, the burn function allows tokens to be removed from circulation. 
What's cool is that the contract has built-in validation to ensure that burning only happens if the sender actually has enough tokens. 
This prevents any potential errors or unauthorized actions.

In a nutshell, SimpleToken is like a fundamental building block for creating and managing tokens on the Ethereum blockchain. 
It's designed to be user-friendly and efficient, making the whole process a breeze.

## Getting Started

### Executing program

* How to run the program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. 
Now, save the file with a ".sol extension" (e.g., SimpleToken.sol). Once done, copy and paste the following code into the file:
```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleToken {
    // Variables to store token details
    string public name;
    string public symbol;
    uint256 public total_supply;

    // Mapping of addresses to token balances
    mapping(address => uint256) public balances;

    // Function used to mint new tokens
    function mint(address account, uint256 amount) public {
        total_supply += amount;
        balances[account] += amount;
    }

    // Function used to burn tokens
    function burn(address account, uint256 amount) public {
        require(balances[account] >= amount, "Insufficient balance");
        total_supply -= amount;
        balances[account] -= amount;
    }
}
```

To compile the code, just go ahead and click on the "Solidity Compiler" tab on the left-hand sidebar.
Make sure you've got the "Compiler" option set to "0.8.4" or another compatible version.
Once you've done that, simply click on the "Compile SimpleToken.sol" button.

Once the code is all compiled and ready to go, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab on the left-hand sidebar.
From there, just select the "SimpleToken" contract from the dropdown menu and hit the "Deploy" button.

Further, by simple giving the input and then calling the functions step by step, we can easily execute the program and get the results.

## Authors

Kanishka Malik

reachkanishkamalik@gmail.com
