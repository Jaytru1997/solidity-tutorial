// SPDX-License-Identifier: MIT

//version
pragma solidity >=0.7.0 <0.9.0;

contract JackNaming {
    uint256 public age;
    string public name;
    bool public isMale;
    address public owner;
    mapping(address => uint256) public balance;
    /*
    balance {
        address: uint256;
    }
    */

    constructor(uint256 _age, string memory _name, bool _isMale, uint256 _value) {
        age = _age;
        name = _name;
        isMale = _isMale;
        owner = msg.sender;
        balance[owner] = _value;
    }

    function editUser(uint256 _age, string memory _name, bool _isMale) public returns(bool){
        age = _age;
        name = _name;
        isMale = _isMale;
        return true;
    }

    function checkSex() public view returns(bool, string memory) {
        if(isMale == true){
            return (true, "user is male");
        }
        else {
            return (false, "user is female");
        }
    }

    //assignment
    /*
    1. write a function that divides user balance by two
    *hint:
    use the division operator to divide the balance
    use the pure state instead of view
    */
    function halfBalance(uint divisor) public view returns(uint, uint) {
        uint a = balance[owner];
        uint div = a/divisor;
        return(div, a);
    }


}