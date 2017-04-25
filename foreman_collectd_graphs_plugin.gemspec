require File.expand_path('../lib/foreman_collectd_graphs_plugin/version', __FILE__)
require 'date'

Gem::Specification.new do |s|
  s.name        = 'foreman_collectd_graphs_plugin'
  s.version     = ForemanCollectdGraphsPlugin::VERSION
  s.license     = 'GPL-3.0'
  s.authors     = 'Jan Sokol' 
  s.email       = 'jan.sokol.glx@gmail.com'
  s.homepage    = 'TODO'
  s.summary     = 'TODO: Summary of ForemanCollectdGraphsPlugin.'
  # also update locale/gemspec.rb
  s.description = 'TODO: Description of ForemanCollectdGraphsPlugin.'

  s.files = Dir['{app,config,db,lib,locale}/**/*'] + ['LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rdoc'
end
