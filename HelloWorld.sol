pragma solidity ^0.8.19;

contract Storage{
    string public greeting;

    function Greeting(string memory _greeting) public {
        greeting = _greeting;
    }

    function getWords() public view returns(string memory){
        return greeting;
    }
}
