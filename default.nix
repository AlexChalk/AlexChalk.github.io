{ pkgs ? import <nixpkgs> { } }:
let
  gems = pkgs.bundlerEnv {
    name = "homepage";
    gemdir = ./.;
    gemConfig = pkgs.defaultGemConfig;
  };
in
pkgs.stdenv.mkDerivation {
  name = "homepage";
  buildInputs = [ gems gems.wrappedRuby ];
}
