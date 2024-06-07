# ErrorHandling Smart Contract
This is solidity project "ErrorHandling".

## Description
This Solidity smart contract demonstrates basic error handling mechanisms using require, assert, and revert. It includes functions setvalue for setting a value and ownerFunction for assert() and revertFunction for revert().

## Getting Started

### Executing Program
To run the program use Remix IDE, an Online Platform https://remix.ethereum.org/.

Once you are on the Remix website, create a new file and save the file with a .sol extension (like ErrorHandling.sol). Copy and paste the code into the file:
```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract ErrorHandling {
    address public owner;
    uint public value;

    constructor() {
        owner = msg.sender;
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setValue(uint _value) public {
        require(_value > 0, "Value must be greater than 0");
        value = _value;
    }
    function ownerFunction() public view onlyOwner {
        assert(owner != address(0));
    }
    function revertFunction(uint _value) public pure {
        if (_value == 0) {
            revert("Value cannot be zero");
        }
    }
}
```
Compile the code and then deploy it

## Authors

Sachin

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
