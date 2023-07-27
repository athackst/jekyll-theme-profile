#!/bin/bash

# Function to load environment variables from .env file if it exists
load_env_file() {
  env_file=".env"
  if [ -f "$env_file" ]; then
    echo "Loading environment variables from $env_file..."
    export $(cat "$env_file" | xargs)
  fi
}

# Function to build the gem and get the path of the generated gem file
build_gem() {
  gemspec_file="$1"

  # Check if gemspec file exists
  if [ ! -f "$gemspec_file" ]; then
    echo "Error: Gemspec file '$gemspec_file' not found."
    exit 1
  fi

  # Build the gem
  gem_file=$(gem build "$gemspec_file" | awk '/File:/ {print $2}')

  echo "$gem_file"
}

# Function to set up RubyGems credentials
setup_rubygems_credentials() {
  if [ -z "$RUBYGEMS_USERNAME" ] || [ -z "$RUBYGEMS_API_KEY" ]; then
    echo "Error: RUBYGEMS_USERNAME and RUBYGEMS_API_KEY environment variables must be set."
    exit 1
  fi

  mkdir -p ~/.gem
  echo -e "---\n:rubygems_api_key: $RUBYGEMS_API_KEY" > ~/.gem/credentials
  chmod 0600 ~/.gem/credentials
}

# Function to upload the gem to RubyGems
upload_gem() {
  gem_file="$1"

  # Check if gem file exists
  if [ ! -f "$gem_file" ]; then
    echo "Error: Gem file '$gem_file' not found."
    exit 1
  fi

  # Push the gem to RubyGems
  gem push "$gem_file" --host https://rubygems.org
}

# Usage example
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <path_to_gemspec_file>"
else
  load_env_file
  gemspec_file="$1"
  generated_gem_file=$(build_gem "$gemspec_file")
  echo "Generated gem file: $generated_gem_file"

  # Set up RubyGems credentials
  setup_rubygems_credentials

  # Upload the gem to RubyGems
  upload_gem "$generated_gem_file"
  echo "Pushed gem file: $generated_gem_file"
fi
