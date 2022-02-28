// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface CommunityToken{
    //------------------------------------------------------------------------------------------------//
    //Add an event,
    //can only be used by WITH ADMIN acc
    //WITH ADMIN account will be operated by api calls from an event stream. 
    //Recieves an event id , user etherum wallet ( The host) and a flag for 
    //Whether the host recieves tokens as entry to the event. 
    function add_event(uint256 event_id_, address host_,bool token_payable_)  external returns(bool);
    //------------------------------------------------------------------------------------------------//
    
    
    
    
     //------------------------------------------------------------------------------------------------//
    // A host wallet can use this function to verify that someone with a registered user wallet 
    // has attended an event.
    function verify_attendence(uint256 event_id_, address attendee)  external returns(bool);
    //------------------------------------------------------------------------------------------------//
    
    
    
    
    //------------------------------------------------------------------------------------------------//
    //Adding a new user to the community by etherum wallet (Only WITH ADMMIN can add)
    function add_user(address new_user_)  external returns(bool);
    //------------------------------------------------------------------------------------------------//
    
    
    
    
    //------------------------------------------------------------------------------------------------//
    //User wallet can pay for an event with a token (requires the event exists, & is token payable) 
    function event_payment(uint256 event_id)  external returns(bool);
    //------------------------------------------------------------------------------------------------//





}
