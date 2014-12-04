# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
require './lib/crypt-env/version.rb'
Jeweler::Tasks.new do |gem|
  gem.name = "crypt-env"
  gem.homepage = "http://github.com/webhat/crypt-env"
  gem.license = "LGPLv2"
  gem.summary = ""
  gem.description = ""
  gem.authors = ["Daniel W. Crompton"]
	gem.email = ['crypt+env@specialbrands.net', '']
  gem.version = CryptEnv::Version::STRING
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/{lib}/*_spec.rb']
	spec.exclude_pattern = './spec/rails-app/**/*_spec.rb'
end

desc "Code coverage detail"
task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['spec'].execute
end

task :default => :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "crypt-env #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
