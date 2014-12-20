#!/bin/bash

# Syncs local directory tree with remote music NAS.

set -uex

WANT=(amy bryan)

for I in "${WANT[@]}"; do
    rsync -av --progress "/Volumes/NAS/music/$I/" "$I"
done
