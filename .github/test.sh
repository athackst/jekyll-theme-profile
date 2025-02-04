#!/bin/bash
set -e
BASEURL=${BASEURL:-""}
HOSTURL=${HOSTURL:-""}

# Build the swap string conditionally
url_swap=""

if [ -n "$HOSTURL" ]; then
  # When HOSTURL is non-blank, add the swap rule.
  url_swap=".*${HOSTURL}${BASEURL}:"
fi

if [ -n "$BASEURL" ]; then
  # If there's already a swap rule, add a comma separator.
  if [ -n "$url_swap" ]; then
    url_swap+=","
  fi
  # Add the BASEURL swap rule.
  url_swap+="^${BASEURL}:"
fi

# Run htmlproofer with the swap rules only if any exist
if [ -n "$url_swap" ]; then
  bundle exec htmlproofer --swap-urls "$url_swap" _site
else
  bundle exec htmlproofer _site
fi
