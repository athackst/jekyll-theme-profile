# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-profile"
  spec.version       = "1.8.2"
  spec.authors       = ["Allison Thackston"]
  spec.email         = ["allison@allisonthackston.com"]

  spec.summary       = "Jekyll theme built off of Github's personal website template and primer."
  spec.homepage      = "https://www.althack.dev/jekyll-theme-profile"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_data|_layouts|_includes|_sass|_plugins|LICENSE|README)!i) }

  spec.required_ruby_version = '>=2.7.0'
  spec.add_dependency "jekyll", "> 3.5", "< 5.0"
  # spec.add_runtime_dependency "github-pages", "~>228"
  spec.add_runtime_dependency "jekyll-github-metadata", "~> 2.9"
  spec.add_runtime_dependency "jekyll-octicons", "~> 19.4"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.0"
  spec.add_runtime_dependency "jekyll-toc", "~> 0.18"
  spec.add_runtime_dependency "jemoji", "~> 0.11"
  spec.add_runtime_dependency "kramdown-parser-gfm", "~> 1.1.0"
end
