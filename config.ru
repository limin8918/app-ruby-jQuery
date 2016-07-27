require File.dirname(__FILE__) + '/config/boot'

map '/' do
  run ExampleController
end