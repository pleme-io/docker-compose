{
  description = "Akeyless Docker Compose quickstart for gateway, SRA, cache, and monitoring";

  inputs = {
    nixpkgs.follows = "substrate/nixpkgs";
    substrate = {
      url = "github:pleme-io/substrate";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = inputs:
    (import "${inputs.substrate}/lib/repo-flake.nix" {
      inherit (inputs) nixpkgs flake-utils;
    }) {
      self = inputs.self;
      language = "docker";
      description = "Akeyless Docker Compose quickstart for gateway, SRA, cache, and monitoring";
    };
}
