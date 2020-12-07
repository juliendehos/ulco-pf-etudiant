{ pkgs ? import <nixpkgs> {} }:
let drv = pkgs.haskellPackages.callCabal2nix "maze" ./. {};
in if pkgs.lib.inNixShell then drv.env else drv
