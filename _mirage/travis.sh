#!/usr/bin/env bash
add-apt-repository ppa:avsm/ppa
apt-get update -qq
apt-get install -qq ocaml ocaml-native-compilers camlp4-extra opam

export OPAMYES=1
opam init
opam install mirage
eval `opam config env`
