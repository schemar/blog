default: help

# List available recipes
help:
  just --list --unsorted

# After you first cloned the project
init:
  git submodule update --init --recursive

# Run the server locally
local:
  hugo server -D
