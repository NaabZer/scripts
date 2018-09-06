#!/bin/bash

$(termite -e "vim --servername unity --remote-tab-silent $1") &
