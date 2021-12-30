#!/bin/bash

rsync -rlpt --stats --partial --del --progress german@66.228.45.93:/usr/local/munki_repo/ ./munki_repo/