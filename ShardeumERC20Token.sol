//SPDX-License-Identifier: MIT
//Owner Vaijanath H

pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract ShardeumERC20Token is ERC20 {
  
  //Pass Token Name & Symbol while deploying this contract
   constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol){
       _mint(msg.sender, 10000 * 10 ** 18);

   }
}
