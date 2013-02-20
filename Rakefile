require "bundler"
Bundler.setup

require "rake"
require "rspec"
require "rspec/core/rake_task"

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "deep_copy/version"

task :gem => :build
task :build do
  system "gem build deep_copy.gemspec"
end

task :install => :build do
  system "sudo gem install deep_copy-#{DeepCopy::VERSION}.gem"
end

task :release => :build do
  system "git tag -a v#{DeepCopy::VERSION} -m 'Tagging #{DeepCopy::VERSION}'"
  system "git push --tags"
  system "gem push deep_copy-#{DeepCopy::VERSION}.gem"
  system "rm deep_copy-#{DeepCopy::VERSION}.gem"
end

RSpec::Core::RakeTask.new("spec") do |spec|
  spec.pattern = "spec/**/*_spec.rb"
  spec.rspec_opts = %w(--format documentation --colour)
end

task :default => :spec
