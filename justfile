default: help

# List available recipes
help:
    just --list --unsorted

# After you first cloned the project
init:
    git submodule update --init --recursive

update:
    git pull
    # Update the submodules to their latest tip:
    git submodule update --recursive --remote

# Run the server locally
local:
    rm -rf ./public ./resources
    hugo server -D

# Create a new post
new-post name:
    hugo new content posts/{{ name }}.md
