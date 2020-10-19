pragma solidity ^0.6.0;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';
//imports ERC20 setup

//Main body of the contract, defining it as ERC20 token
contract WFTM is ERC20 {
    //the constructor names the token
    constructor() ERC20("Wrapped Fantom", "WFTM") public {}
    
    //mint function allows you to mint new wrapped tokens
    function mint() external payable {
        _mint(msg.sender, msg.value);
    }
    
    //this allows you to return your tokens and retreive your original deposit
    function burn(uint amount) external {
        msg.sender.transfer(amount);
        _burn(msg.sender, amount);
    }
}
