# frozen_string_literal: true

source "https://rubygems.org"
gemspec

gem 'rake'

group :jekyll_plugins do
  gem "jekyll-category-pages"
  gem 'jekyll-paginate'
  gem 'jekyll-relative-links'
  gem 'jekyll-tagging'
  gem 'jekyll-github-metadata', '= 2.13.0' # Needed to rate limit API calls.
end

group :development do
  gem 'html-proofer'
  gem 'dotenv', '~> 2.7'
  gem 'webrick', '~> 1.8'
end
