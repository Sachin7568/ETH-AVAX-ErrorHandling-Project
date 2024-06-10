# Functions and Errors Smart Contract
This is the solidity project "ErrorHandling".

## Description
This Solidity smart contract demonstrates basic error-handling mechanisms using require, assert, and revert. It includes functions setvalue for setting a value, ownerFunction for assert() and revertFunction for revert().

## Getting Started

### Executing Program
To run the program use Remix IDE, an Online Platform https://remix.ethereum.org/.

Once on the Remix website, create a new file and save the file with a .sol extension (like ErrorHandling.sol). Copy and paste the code into the file:
```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract RealWorldProblemSolver {
    address public owner;
    uint public totalDonations;

    constructor() {
        owner = msg.sender;
    }

    function donate(uint amount) public {
        require(amount > 0, "Donation amount must be positive");
        totalDonations += amount;
    }

    function withdrawDonations() public {
        require(msg.sender == owner, "Only the owner can withdraw");
        require(totalDonations > 0, "No donations available");
        payable(owner).transfer(totalDonations);
        totalDonations = 0;
    }

    function performInternalCheck() public pure returns (bool) {
        uint256 x = 10;
        uint256 y = 5;
        assert(x > y);
        return true;
    }
}
```
Compile the code and then deploy it

## Authors

Sachin

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
