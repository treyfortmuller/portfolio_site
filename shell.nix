{ pkgs ? import <nixpkgs> { } }:
let
  jekyll_env = with pkgs; bundlerEnv rec {
    name = "jekyll_env";
    inherit ruby;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
  };
in pkgs.mkShell {
  packages = with pkgs; [ jekyll_env bundler jekyll bundix ruby ];
  shellHook = ''
    exec ${jekyll_env}/bin/jekyll serve --watch
  '';
}

