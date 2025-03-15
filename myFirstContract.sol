// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract MyFirstContract {
    uint accountNum = 0;
    struct Person{
        string name;
        uint account;
        uint num;
    }
    Person[] person;

    //name -> account
    mapping(string => uint) public searchAccount;
    //name->num
    mapping(string => uint) public showNum;

    function createAccount(string memory _name,uint _account) public {
        person.push(Person({name: _name, account: _account,num:accountNum}));
        showNum[_name] = accountNum;
        searchAccount[_name] = _account;
        accountNum += 1;
    }

    function story(uint _num,uint _story) public {
        person[_num].account += _story;
    }

    function cost(uint _num,uint _cost_money)public {
        person[_num].account -= _cost_money;
    }

    function show_account(uint _num)public view returns (string memory name, uint account) {
        return (person[_num].name,person[_num].account);
    }

}
