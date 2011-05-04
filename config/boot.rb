require 'rubygems'

# Set up gems listed in the Gemfile.
GEMFILE_PATH = File.expand_path('../../Gemfile', __FILE__)
if File.exist?(GEMFILE_PATH)
  # Force the rails 3 application to use its Gemfile
  ENV['BUNDLE_GEMFILE'] = GEMFILE_PATH
  require 'bundler'
  Bundler.setup
end
