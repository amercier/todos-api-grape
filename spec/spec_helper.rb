ENV['RACK_ENV'] = 'test'

require File.expand_path('../coverage_helper', __FILE__)
require File.expand_path('../../config/environment', __FILE__)

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
