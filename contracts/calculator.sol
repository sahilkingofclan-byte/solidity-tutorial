//SPDX-License-identifier: MIT

pragma solidity ^0.8.0;

contract calculator {
    int result;

    constructor() {
        result = 0;
    }

    function add(int x, int y) external  {
        result = x + y;
    }

    function subtract(int x, int y) public {
        result = x - y;
    }

    function multiply(int x, int y) public {
        result = x * y;
    }

    function divide(int x, int y) public {
        result = x / y;

    }

    function get() public view returns (int) {
        return result;
    }

}