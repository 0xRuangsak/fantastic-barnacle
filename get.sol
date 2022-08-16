function random(string memory input) internal pure returns (uint256) {
    return uint256(keccak256(abi.encodePacked(input)));
}

function getNames(uint256 tokenId) public view returns (string memory) {
    return pluck(tokenId, "NAMES", names);
}

function getAbility1(uint256 tokenId) public view returns (string memory) {
    return pluck(tokenId, "ABILITY1", ability1);
}

function getAbility2(uint256 tokenId) public view returns (string memory) {
    return pluck(tokenId, "ABILITY2", ability2);
}

function getType(uint256 tokenId) public view returns (string memory) {
    return pluck(tokenId, "TYPE", types);
}

function getRarity(uint256 tokenId) public view returns (string memory) {
    return pluck(tokenId, "RARITY", rarity);
}
