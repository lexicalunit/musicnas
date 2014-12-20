#!/bin/bash

# Uploads directory tree at "new" to remote music NAS, then locally syncs.

set -uex

# delete cruft
find . -name .DS_Store -print0 | xargs -0 rm -f

# upload new songs to NAS
rsync -av --progress new/* /Volumes/NAS/music/.

# sync new songs to local mirror
rsync -av --progress new/* .

# clean out new songs (they're in the NAS and local mirror now)
find new -type f -print0 | xargs -0 rm -f
