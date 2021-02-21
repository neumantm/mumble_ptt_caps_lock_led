{ pkgs ? import <nixpkgs> {} }:

let
  poetryEnv = pkgs.poetry2nix.mkPoetryEnv {
    projectDir = ./.;
  };
in pkgs.mkShell {

  buildInputs = [
    pkgs.poetry
    pkgs.python38Packages.pygobject3
    poetryEnv
  ];

}
