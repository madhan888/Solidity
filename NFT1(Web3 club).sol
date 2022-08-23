pragma solidity ^0.8.13;

contract MyNFT1 is ERC721,ERC721Enumerable,Ownable{
    using Counters for Counters.Counter;

    Counters.Counter private _tokedIdCounter;
    uint256 public mintRate=0.01 ether;

    constructor() ERC721("MyNFT","MNFT") {}

    function _baseURI() internal pure override returns (string memory)
    {
        return"https"
    }
    
    function safeMint(address to) public payable{
        require(msg.sender >=mintRate,"Not enough ether sent.");
        _tokenIdcounter.increment();
        _safeMint(to,_tokenIdCounter.current());
    }

    function _beforeTokenTransfer(address from,address to, uint256 tokenId)
          internal
          override(ERC721, ERC721Enumerable)
    {
          super._beforeTokenTransfer(from,to,tokenId);
    }
    function supportsInterface(bytes4 interfaceID)
         public
         view
         override(ERC721,ERC721Enumerable)
         returns(bool)
         {
             return super.supportsInterface(interfaceId);
         }






}