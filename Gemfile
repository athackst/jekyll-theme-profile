# frozen_string_literal: true

source 'https://rubygems.org'
gemspec

gem 'rake'

group :jekyll_plugins do
  gem 'jekyll-category-pages' # Recommended for category index
  gem 'jekyll-paginate' # Recommended for blog index
  gem 'jekyll-tagging' # Recommended for tagging index
  gem 'jekyll-github-metadata', '= 2.13.0' # Needed to rate limit calls
end

group :development do
  gem 'dotenv', '~> 2.7'
  gem 'html-proofer'
  gem 'rspec'
  gem 'rubocop'
  gem 'ruby-lsp'
  gem 'webrick', '~> 1.8'
end
