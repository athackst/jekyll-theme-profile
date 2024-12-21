#!/bin/bash
set -e

if [[ -n "${JEKYLL_FOLDER}" ]]; then
    # If JEKYLL_FOLDER is set, use it as the source folder
    JEKYLL_OPTIONS+="-s ${JEKYLL_FOLDER}"
fi

if [[ -n "${GEMFILE}" ]]; then
    BUNDLE_OPTIONS="--gemfile=${GEMFILE}"
fi

bundle exec $BUNDLE_OPTIONS jekyll build $JEKYLL_OPTIONS
