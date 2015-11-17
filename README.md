# static-www

[![Build Status](https://api.travis-ci.org/unikernlz/static-www.svg?branch=master)](https://travis-ci.org/unikernlz/static-www.svg)

based on [mirage os](https://mirage.io/)

*most parts are ~~blatantly copied from~~ based on the [formidable mirage-skeleton](https://github.com/mirage/mirage-skeleton) project*


## tl;dr

```

# install mirage on your system (for example via the opam tool)

# add content to the htdocs folder (optional)

./build

# adjust "static-www.xl" to your environment (especially the vif part)

xl create -c static-www.xl`

```

(If your dont want to run the VM on your local host,
you have to transfer `static-www.x*` to the xen server of your choice.)
