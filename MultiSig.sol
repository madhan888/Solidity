pragma solidity 0.6.0;
pragma experimental ABIEncoderV2;

contract Wallet{
    address[] public approvers;
    uint public quorum;

    struct Transfer{
        uint id;
        uint amount;
        address payable to;
        uint approvals;
        bool sent;
    }

    mapping(uint => Transfer) public transfers;
    uint public nextId;

    Transfer[] public transfers;
    mapping(address => mapping(id => bool)) public approvals;

    constructor(address[] memory _approvers,uint _quorum) public
    {
     approvers=_approvers;
     quorum=_quorum;
         }

    function getApprovers() external view returns(address[] memory){
        return approvers;
    }


    function createTransfer(uint amount,address payable to) external{
        transfers[nextId] = Transfer{
                nextId,
                amount,
                to,
                0,
                false
        };

        nextId++;
    }

    function getTransfer() external view returns(Transfer[] memory){
        return transfer;
    }
    
    function approveTransfer(uint id) external{
        require 
    }




}