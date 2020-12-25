const ApprovalContract = artifacts.require('../contracts/ApprovalContract.sol');

contract('ApprovalContract', function(accounts) {

    it('initiates a contract', async function() {
        const contract = await ApprovalContract.deployed();
        const approver = await contract.approver.call();
        assert.equal(approver, 0xCD502bFB0c6d505812A63CCb88A35129a3d21727, "approvers dont match")
    })

})