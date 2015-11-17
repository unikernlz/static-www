#!/usr/bin/env bash
echo "yes" | sudo add-apt-repository ppa:avsm/ppa
sudo apt-get update -qq
sudo apt-get install -qq ocaml ocaml-native-compilers camlp4-extra opam

export OPAMYES=1
opam init
opam install mirage
eval `opam config env`
