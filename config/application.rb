require 'logger'
logger = Logger.new(STDOUT)

require_relative './boot'
logger.info "Booted application in #{ENV['RACK_ENV']} mode"

Dir[File.expand_path('../../api/*.rb', __FILE__)].each do |f|
  require f
  relative_path = Pathname.new(f).relative_path_from(Pathname.new(Dir.pwd))
  logger.info "Loaded #{relative_path}"
end

require_relative '../api'
logger.info 'Loaded api.rb'
