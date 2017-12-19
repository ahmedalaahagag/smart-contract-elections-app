pragma solidity ^0.4.11;

contract Voting{
    mapping (bytes32 => uint8) public totalVotes;
    bytes32[] public  candidatesList;

    function votingList(bytes32[] candidatesNames){
        candidatesList=candidatesNames;
    }
    function totalVotesForCandidate(bytes32 candidate) returns (uint8){
        return totalVotes[candidate];
    }
    function hilary(bytes32 candidate){
      if(validCandidate(candidate)==false) throw;
        totalVotes[candidate]+=1;
    }
    function validCandidate(bytes32 candidate) returns (boolen){
        for(uint i =0;i<candidatesList.length;i++){
            if(candidates[i]==candidate){
            return true;
            }
        }
        return false;
    }
}