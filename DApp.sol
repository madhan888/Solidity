//SPDX-License-Identifier : MIT

pragma solidity  >=0.7.0 <0.9.0

contract Ballot{

struct proposal {

//bytes are a basic unit measurement of information(to save the gas fees)
bytes32 name; //name of each proposal

uint voteCount; //number of accumulated votes

//voters : voted=bool,access to vote = uint, vote index =uint

}

struct voter{
    uint vote;
    bool voted;
    uint weight;
}

proposal[] public proposals;

mapping (address => voter) public voters;

address public chairperson;

constructor(bytes32 memory proposalNames) {

    for(uint i=0;i<proposalNames.length;i++){
        
    }

}








}