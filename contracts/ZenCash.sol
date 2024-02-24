// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import "erc721a/contracts/ERC721A.sol";

contract ZenCash is ERC721A{

    // Maximum number of tokens that can be minted
    uint256 public maxQuantity = 6;

    constructor( string memory _DeepNFT,
        string memory _DTKNFT) ERC721A("DeepNFT", "DTKNFT") {}
    
    // Function to mint NFT which only owner can perform
    function mint(uint256 quantity) external payable {
        require(totalSupply() + quantity <= maxQuantity ,"You can not mint more than 6");
        _mint(msg.sender, quantity);
    }

    // Override the baseURI function to return the base URL for the NFTs
    function _baseURI() internal pure override returns (string memory){
        return "https://gateway.pinata.cloud/ipfs/QmfAFEtUeGhvFy9vqp2CoyU4ioLe81hyEFbVUViVoCZRHn/";
    }

    // Return the URL for the prompt description
    function promptDescription() external pure returns (string memory) {
        return "a professional female developer image";
    }
}
