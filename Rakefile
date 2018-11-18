$LOAD_PATH << File.expand_path('lib', __dir__)

require 'rake'
require 'rake/testtask'
require 'rubocop/rake_task'
require 'bundler/audit/task'

Bundler::Audit::Task.new

task default: ['bundle:audit', :test, :rubocop]

desc 'Run RuboCop'
RuboCop::RakeTask.new(:rubocop) do |task|
  task.formatters = ['simple']
  task.fail_on_error = true
end

Rake::TestTask.new do |task|
  task.test_files = ['test/**/*_test.rb']
  task.name = 'test'
  task.description = 'Run all tests'
  task.warning = false
end
