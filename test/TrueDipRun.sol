pragma solidity >=0.4.21;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

contract TrueDipRun {
    Adoption dealer = Adoption(DeployedAddresses.Adoption());

    uint expectedCandidateID = 10;

    address exDealer = address(this);

    function testUserCanAdoptPet() public {
        uint returnedId = dealer.adopt(expectedCandidateID);
        Assert.equal(returnedId, expectedCandidateID, "1");
    }

    function testGetCandidateID() public {
        address adopter = dealer.adopters(expectedCandidateID);
        Assert.equal(adopter, exDealer, "2");
    }

    function testGetCandidateIDInArray() public {
        address[16] memory adopters = dealer.getAdopters();
        Assert.equal(adopters[expectedCandidateID], exDealer, "3");
    }

}