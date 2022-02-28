// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface CommunityToken{

    function add_event(uint256 event_id_, address host, bool token_payable)  external returns(bool);
    function verify_attendence(uint256 event_id_, address attendee)  external returns(bool);
    function add_user(address new_user_)  external returns(bool);
    function event_payment(uint256 event_id)  external returns(bool);






}
