ENV['RACK_ENV'] = 'test'

require File.expand_path('../../config/environment', __FILE__)

RSpec.configure do |config|
  require 'rack/test'
  config.include Rack::Test::Methods
end
