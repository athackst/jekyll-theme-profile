#!/bin/bash
set -e
BASEURL=${BASEURL:-""}
HOSTURL=${HOSTURL:-""}
IGNORE_URLS=${IGNORE_URLS:-""}

# Build the swap string conditionally
swap_urls=""

if [ -n "$HOSTURL" ]; then
  # When HOSTURL is non-blank, add the swap rule.
  swap_urls=".*${HOSTURL}${BASEURL}:"
fi

if [ -n "$BASEURL" ]; then
  # If there's already a swap rule, add a comma separator.
  if [ -n "$swap_urls" ]; then
    swap_urls+=","
  fi
  # Add the BASEURL swap rule.
  swap_urls+="^${BASEURL}:"
fi

# Prepare swap_urls flag if necessary
swap_urls_flag=""
if [ -n "$swap_urls" ]; then
  swap_urls_flag="--swap-urls $swap_urls"
fi

# Prepare ignore_urls flag if necessary
ignore_urls_flag=""
if [ -n "$IGNORE_URLS" ]; then
  ignore_urls_flag="--ignore-urls $IGNORE_URLS"
fi

# Run htmlproofer with appropriate flags
echo "Running htmlproofer $swap_urls_flag $ignore_urls_flag _site"
bundle exec htmlproofer $swap_urls_flag $ignore_urls_flag _site
