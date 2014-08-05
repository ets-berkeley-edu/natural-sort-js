#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

Bundler::GemHelper.install_tasks

require 'rake'
# http://ruby-doc.org/stdlib/libdoc/net/http/rdoc/classes/Net/HTTP.html
require 'net/http'

Dir.glob('lib/tasks/**/*.rake', &method(:load))

