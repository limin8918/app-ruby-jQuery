class ExampleController < Sinatra::Base

  set :views, File.join(File.dirname(__FILE__), '..', 'views')

  get '/' do
    slim :home
  end
end