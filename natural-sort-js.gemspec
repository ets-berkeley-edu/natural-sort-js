$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'natural-sort-js/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'natural-sort-js'
  s.version     = NaturalSortJs::VERSION
  s.licenses    = ['MIT']
  s.authors     = ['Christian Vuerings']
  s.email       = ['vueringschristian@gmail.com']
  s.homepage    = 'http://github.com/ets-berkeley-edu/natural-sort-js'
  s.summary     = 'Naturalsort.js as a gem'
  s.description = 'Natural Sort algorithm for Javascript'

  s.files = Dir['{app,config,db,lib,vendor}/**/*'] + ['MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'railties', '~> 4.0'

  s.add_development_dependency 'bundler', '~> 1.6'
end
