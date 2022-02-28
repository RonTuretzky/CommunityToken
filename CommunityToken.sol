// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface CommunityToken{

    function add_event(uint256 event_id_, address host) public returns(bool);
    function verify_attendence(uint256 event_id_, address attendee) public returns(bool);
    function increment_count(address attendee) public returns(bool);
    function add_user(address new_user_) public returns(bool);





}
