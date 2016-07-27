ENV['RACK_ENV'] = 'test'
require './config/boot'
require 'rack/test'

include Rack::Test::Methods