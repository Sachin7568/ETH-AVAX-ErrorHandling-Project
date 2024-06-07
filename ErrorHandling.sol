//For this project, write a smart contract that implements the require(), assert() and revert() statements.

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
