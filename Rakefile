# frozen_string_literal: true

require 'bundler/setup'
require 'grape/activerecord/rake'
require 'rake/testtask'
require 'rspec/core/rake_task'

# Grape::ActiveRecord.db_dir = 'db'
# Grape::ActiveRecord.migrations_paths = ['db/migrate']
# Grape::ActiveRecord.fixtures_path = 'test/fixtures'
# Grape::ActiveRecord.seed_file = 'seeds.rb'

namespace :db do
  task :environment do
    require_relative 'config/application'
  end
end

desc 'Run the specs'
RSpec::Core::RakeTask.new(:spec) do |task|
  task.pattern = Dir.glob('spec/**/*_spec.rb')
end
