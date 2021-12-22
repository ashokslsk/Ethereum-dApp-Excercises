const ApprovalContract = artifacts.require('../../contracts/ApprovalContract.sol');

contract('ApprovalContract', function(accounts){
    it('initiates contract', async function(){
        const contract = await ApprovalContract.deployed();
        const approver = await contract.approver.call();
        assetrt.equal(approver, "0x953d7Be5C13a265538b2C9F317A7d4B319Eb3642", "approver match")
    });
})