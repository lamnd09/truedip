pragma solidity >=0.4.21;

contract Adoption {
    address[16] public adopters;

    // Adopting a pet
    function adopt(uint candidateID) public returns (uint) {
        require(candidateID >= 0 && candidateID <= 15);
        adopters[candidateID] = msg.sender;
        return candidateID;
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }



}