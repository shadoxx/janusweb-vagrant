# janusweb-vagrant
Elation Development Environment for JanusWeb

# Getting Started #
This project heavily utilizes submodule dependencies and requires the `--recursive`
flag when performing the initial checkout of this repository:
```
git clone --recursive https://github.com/shadoxx/janusweb-vagrant.git
```

After Git finishes pulling in all of our submodules, run `vagrant up` and wait
for the command to complete. Direct your browser to:
```
http://localhost:8000/janusweb
```

If everything completed successfully, you can now begin developing and exploring
the metaverse!

# JanusWeb Standalone #
This project attempts to automatically compile the latest JanusWeb from source
using the included build script (`provision/submodules/janusweb/utils/build.sh`).
If you're just looking for the drop in JanusWeb components, they can be located
in `provision/submodules/janusweb/build`.

More documentation to follow!
