// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    address[] carteiras;

    constructor() {
        console.log("Ueba, eu sou um contrato e eu sou inteligente");
    }

    function wave() public {
        totalWaves += 1;
        carteiras.push(msg.sender);
        console.log("%s deu tchauzinho!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("Temos um total de %d tchauzinhos!", totalWaves);
        if (totalWaves>0)
            console.log("O ultimo tchauzinho foi da %s !", carteiras[totalWaves-1]);
        return totalWaves;
    }
}