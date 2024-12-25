#!/bin/bash
set -e

if [[ -n "${JEKYLL_FOLDER}" ]]; then
    # If JEKYLL_FOLDER is set, use it as the source folder
    JEKYLL_OPTIONS+="-s ${JEKYLL_FOLDER} "
fi

if [[ -n "${JEKYLL_SITE}" ]]; then
    # If JEKYLL_FOLDER is set, use it as the source folder
    JEKYLL_OPTIONS+="-d ${JEKYLL_SITE} "
fi

bundle exec jekyll build $JEKYLL_OPTIONS
