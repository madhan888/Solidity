//SPDX -license-Identifier: UNLICENSED
pragma solidity o.8.5;

contract vaultContract{

    struct{
        address  creator;
        string name;
        address[] users;
        uint256 amount;
    }

    uint256 totalVaults;
    mapping(uint256=> vault) public vaulds;
    mapping(address=> uint256)public balance;

    event vouldDistribution (uint256 vauldId,uint256 amount)
    function createvault(string memory name,address[] memory users,uint 256 initialAmount)public returns
    
} 