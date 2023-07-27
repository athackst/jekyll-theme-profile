#!/bin/bash

# Function to bump the version in the gemspec file
bump_version() {
    gemspec_file="$1"
    new_version="$2"

    # Check if the gemspec file exists
    if [ ! -f "$gemspec_file" ]; then
        echo "Error: $gemspec_file not found."
        exit 1
    fi

    # Replace the version with the new version using sed
    sed -i "s/spec\.version\s*=\s*\"\(.*\)\"/spec.version = \"$new_version\"/" "$gemspec_file"

    echo "Version in $gemspec_file bumped to $new_version."
}

# Usage example
if [ "$#" -lt 2 ]; then
    echo "Usage: $0 <path_to_gemspec_file> <new_version>"
else
    bump_version "$1" "$2"
fi
