{pkgs ? import <nixpkgs> {}}:
pkgs.stdenv.mkDerivation {
  name = "xtensor-fftw";
  nativeBuildInputs = with pkgs; [cmake pkg-config];
  buildInputs = with pkgs; [fftw fftwFloat fftwLongDouble xtensor];
  src = ./.;
}
