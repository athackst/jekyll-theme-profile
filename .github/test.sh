#!/bin/bash
set -e
BASEURL=${BASEURL:-""}
HOSTURL=${HOSTURL:-""}
url_swap=".*${HOSTURL}${BASEURL}:,^${BASEURL}:"

bundle exec htmlproofer --swap-urls $url_swap _site
