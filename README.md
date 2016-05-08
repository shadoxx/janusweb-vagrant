# janusweb-vagrant
Elation + JanusWeb Development Environment

This repository is intended to serve as the basis for developing and exploring content
in the metaverse using nothing but a standard web-browser.

# Initial Checkout Commands #
```
git submodule init
git submodule update
```

These two commands in sequence initialize the directories our submodules
with be stored in and then checks out our submodules from Git.

JanusWeb uses the Elation engine, which has submodules of its own, so we'll need to pull all of those components in the same way before continuing:  

```
git submodule foreach git submodule init
git submodule foreach git submodule update
```

After Git finishes pulling in all our Elation components, now we can do
a `vagrant up` and have ourselves a development environment!

More documentation to follow.
