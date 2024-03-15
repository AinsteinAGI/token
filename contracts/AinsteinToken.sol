/*
****************************************************************************************************************************************************

                                                             ;     /        ,--.       /
                                                            ["]   ["]  ,<  |__**| >,  ["]  
                                                           /[_]\  [~]\/    |//  |   \/[~]
                                                            ] [  ooooo      /o|__|   ooooo

                                     0xA                   000             0xA                                  0xA
                                     0xI                   000             0xI                                  0xI
                                                           000
                             E=mc^2  000 00000b.  .d0000b  000000  .d00b.  000 00000b.         E=mc^2   .d00b.  000
                                "00b 000 000 "00b 00K      000    d0P  Y0b 000 000 "00b           "00b d00P"00b 000
                            .d000000 000 000  000 "Y0000b. 000    00000000 000 000  000       .d000000 000  000 000
                            000  000 000 000  000      X00 Y00b.  Y0b.     000 000  000       000  000 Y00b 000 000
                            "Y000000 000 000  000  00000P'  "Y000  "Y0000  000 000  000       "Y000000  "Y00000 000
                                                                                                            000
                                                                                                       Y0b d00P
                                                                                                        "Y00P"

****************************************************************************************************************************************************
*/

// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AinsteinToken is ERC20, ERC20Burnable, ERC20Pausable, Ownable {
    constructor(address initialOwner) ERC20("Ainstein", "AGI") Ownable(initialOwner)
    {
        _mint(msg.sender, 10000000000 * 10 ** decimals());
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    // The following functions are overrides required by Solidity.
    function _update(address from, address to, uint256 value) internal override(ERC20, ERC20Pausable)
    {
        super._update(from, to, value);
    }
}