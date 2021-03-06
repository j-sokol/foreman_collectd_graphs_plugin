require 'rake/testtask'

# Tasks
namespace :foreman_collectd_graphs_plugin do
  namespace :example do
    desc 'Example Task'
    task task: :environment do
      # Task goes here
    end
  end
end

# Tests
namespace :test do
  desc 'Test ForemanCollectdGraphsPlugin'
  Rake::TestTask.new(:foreman_collectd_graphs_plugin) do |t|
    test_dir = File.join(File.dirname(__FILE__), '../..', 'test')
    t.libs << ['test', test_dir]
    t.pattern = "#{test_dir}/**/*_test.rb"
    t.verbose = true
    t.warning = false
  end
end

namespace :foreman_collectd_graphs_plugin do
  task :rubocop do
    begin
      require 'rubocop/rake_task'
      RuboCop::RakeTask.new(:rubocop_foreman_collectd_graphs_plugin) do |task|
        task.patterns = ["#{ForemanCollectdGraphsPlugin::Engine.root}/app/**/*.rb",
                         "#{ForemanCollectdGraphsPlugin::Engine.root}/lib/**/*.rb",
                         "#{ForemanCollectdGraphsPlugin::Engine.root}/test/**/*.rb"]
      end
    rescue
      puts 'Rubocop not loaded.'
    end

    Rake::Task['rubocop_foreman_collectd_graphs_plugin'].invoke
  end
end

Rake::Task[:test].enhance ['test:foreman_collectd_graphs_plugin']

load 'tasks/jenkins.rake'
if Rake::Task.task_defined?(:'jenkins:unit')
  Rake::Task['jenkins:unit'].enhance ['test:foreman_collectd_graphs_plugin', 'foreman_collectd_graphs_plugin:rubocop']
end
