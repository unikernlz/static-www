# static-www

[![Build Status](https://api.travis-ci.org/unikernlz/static-www.svg?branch=master)](https://travis-ci.org/unikernlz/static-www.svg)

* build a unikernel with httpd server and static content, using [mirage os](https://mirage.io/),

* most parts ~~blatantly copied from~~ based on the formidable [mirage-skeleton](https://github.com/mirage/mirage-skeleton) project,

* integration build runs on [travis-ci](https://travis-ci.org/),

* release deployment via [travis deployment](http://docs.travis-ci.com/user/deployment/releases/)


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
