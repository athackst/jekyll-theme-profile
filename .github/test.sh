#!/bin/bash
set -e
BASEURL=${BASEURL:-""}
HOSTURL=${HOSTURL:-""}
url_swap=".*${HOSTURL}:,^${BASEURL}:"

SITE=${JEKYLL_SITE:-"_site"}

bundle exec htmlproofer --swap-urls $url_swap $SITE
