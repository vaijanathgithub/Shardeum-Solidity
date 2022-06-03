//SPDX-License-Identifier: MIT
//Owner Vaijanath H

pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract ShardeumERC20Token is ERC20 {
    /**
     * @dev creates & calls ERC20 constructor 
     *
     */
    constructor(string memory _name, string memory _symbol, uint256 _totalSupply) ERC20(_name, _symbol){
       _mint(msg.sender, _totalSupply * 10 ** 18);
    }

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferTokens(address recipient, uint256 amount) external returns (bool){
        return transfer(recipient, amount);             

    }
    
}
