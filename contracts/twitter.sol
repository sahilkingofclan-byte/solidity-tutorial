//SPDX-License-identifier: MIT

pragma solidity ^0.8.0;

contract twitter {

    mapping(address => string[]) public user_tweets;

    function createTweet(string memory tweet) public {
        user_tweets[msg.sender].push(tweet);
    }

    function getTweet(address _owner, uint _i) public view returns (string memory){
        return user_tweets[_owner][_i];
    }

    function getAllTweets(address _owner) public view returns( string[] memory) {
        return user_tweets[_owner];
    }

}