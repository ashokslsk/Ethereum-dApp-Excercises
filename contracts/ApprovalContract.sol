// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0;


contract AppravalContract {

    
    address public sender;
    address public reciever;
    address public constant approver = 0x953d7Be5C13a265538b2C9F317A7d4B319Eb3642;

    function deposit(address _reciever) external payable {
        require(msg.value > 0);
        sender = msg.sender;
        reciever = _reciever;
    }

    function viewApprover() external pure returns(address) {
        return(approver);
    }

    function approve() external {
        require(msg.sender == approver);
        reciever.transfer(address(this).balance);
    }
}

