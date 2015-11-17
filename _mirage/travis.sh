#!/usr/bin/env bash

echo "==== install ocaml and opam ===="
echo "yes" | sudo add-apt-repository ppa:avsm/ppa
sudo apt-get update -qq
sudo apt-get install -qq ocaml ocaml-native-compilers camlp4-extra opam

echo "==== update compiler ===="
echo "update gcc and binutils for mirage-entropy-xen working"
sudo add-apt-repository --yes ppa:ubuntu-toolchain-r/test
sudo apt-get -qq update
sudo apt-get install -y gcc-4.8
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 90
wget http://mirrors.kernel.org/ubuntu/pool/main/b/binutils/binutils_2.24-5ubuntu3.1_amd64.deb
sudo dpkg -i binutils_2.24-5ubuntu3.1_amd64.deb

echo "==== install mirage ===="
export OPAMYES=1
opam init
opam install mirage
eval `opam config env`

echo "==== travis setup finished ===="
