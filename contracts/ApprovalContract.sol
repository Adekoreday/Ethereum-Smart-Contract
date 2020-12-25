pragma solidity ^0.5.16;

contract ApprovalContract {
    address public sender;
    address payable public receiver;
    address public constant approver = 0xCD502bFB0c6d505812A63CCb88A35129a3d21727;

    function deposit (address payable _receiver) external payable {
        require(msg.value > 0);
        sender = msg.sender;
        receiver = _receiver;
    }

    function viewApprover() external pure returns(address) {
        return(approver);
    }

    function approve() external {
        require(msg.sender == approver);
        receiver.transfer(address(this).balance);
    }

}