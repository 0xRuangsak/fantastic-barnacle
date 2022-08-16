function tokenURI(uint256 tokenId) override public view returns (string memory) {
    string[17] memory parts;
    parts[0] = '<svg xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMinYMin meet" viewBox="0 0 350 350"><style>.base { fill: black; font-family: serif; font-size: 14px; }</style><rect width="100%" height="100%" fill="#bab7db" /><text x="10" y="20" class="base">';

    parts[1] = getNames(tokenId);

    parts[2] = '</text><text x="10" y="40" class="base">';

    parts[3] = getLocation(tokenId);

    parts[4] = '</text><text x="10" y="60" class="base">';

    parts[5] = getAbility1(tokenId);

    parts[6] = '</text><text x="10" y="80" class="base">';

    parts[7] = getAbility2(tokenId);

    parts[8] = '</text><text x="10" y="100" class="base">';

    parts[9] = getType(tokenId);

    parts[10] = '</text><text x="10" y="120" class="base">';

    parts[11] = getRarity(tokenId);

    parts[12] = '</text><text x="10" y="140" class="base">';

    string memory output = string(abi.encodePacked(parts[0], parts[1], parts[2], parts[3], parts[4], parts[5], parts[6], parts[7], parts[8], parts[9], parts[10], parts[11], parts[12]));
