// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// import "./StringUtils.sol";

contract ERCTest20 {
    string private _name;
    string private _symbol;
    uint a = 100;
    uint b = 10;
    string private  add = "+";
    string private subtract = "-";
    string private multiply = "*";
    string private divide = "/";
    string private modulus = "%";
    string private power = "**";

    constructor (string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    function mathOperations(string memory operator) public view returns(uint256) {
        if (keccak256(abi.encodePacked(operator)) == keccak256(abi.encodePacked(add))) {
            return a + b;
        }
        // Assignment
        /*
        write conditional statements to perform the other mathematical operations
        subtract, multiply, divide, modulus, power
        follow the syntax of the add operation to achieve these tasks
        explore the if...else if...else conditionals 
        */
    }
}