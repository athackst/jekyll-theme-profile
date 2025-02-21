#!/bin/bash

## Close stale release versions
set -e

# Load the current version from the VERSION file
VERSION=$(cat VERSION)
RELEASE_BRANCH="release/v${VERSION}"

echo "Current version: $VERSION"
echo "Expected release branch: $RELEASE_BRANCH"

# Get all open PRs with branches starting with "release/v"
PR_LIST=$(gh pr list --state open --json number,headRefName --jq '.[] | select(.headRefName | startswith("release/v"))')

if [ -z "$PR_LIST" ]; then
    echo "No open release PRs found."
    exit 0
fi

echo "Checking existing release PRs..."

# Iterate through PRs and close any that don't match the current version
echo "$PR_LIST" | jq -c '.' | while read -r pr; do
    PR_NUMBER=$(echo "$pr" | jq -r '.number')
    PR_BRANCH=$(echo "$pr" | jq -r '.headRefName')

    if [ "$PR_BRANCH" != "$RELEASE_BRANCH" ]; then
        echo "Closing outdated release PR #$PR_NUMBER (branch: $PR_BRANCH)..."
        gh pr close "$PR_NUMBER" --delete-branch
    else
        export PR_EXISTS="true"
        echo "Keeping current release PR #$PR_NUMBER (branch: $PR_BRANCH)"
    fi
done

echo "Cleanup complete."
