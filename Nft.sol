


contract Mynft is ERC721URIStorage , Ownable{

    using Counters for Counters.Counter;

    Counters.Counter private _tokenIds;

    constructor() ERC721("Code Eater","CER"){}(
sxa
    function mintNFT(address recipient,string memory tokenURI) public onlyowner returns (uint 256){
    _tokenIds.increment();

    uint256 newItemId= _tokenIds.current();
    _mint(recipient,newItemId);
    _setTokenURI(newItemId,tokenURI);
    return newItemId;,
    }

    }