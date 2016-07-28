class ExampleController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..', '..')
  set :views, File.join(File.dirname(__FILE__), '..', 'views')

  register Sinatra::AssetPack

  register Sinatra::Partial
  set :partial_template_engine, :slim

  assets {
    serve 'home/js', from: 'lib/js'
    serve 'home/css', from: 'lib/css'
    serve 'home/img', from: 'lib/img'

    js :example_package, 'js/example_package.js',
       ['js/vendor/jquery.js', 'js/example.js', 'js/initializer.js']
    css :example_package, 'css/example_package.css', ['css/example.css']
  }

  get '/home/:item' do
    @id, @name = params[:item].split('-')
    unless @name.nil?
      slim :home
    else
      status 404
      body 'This is a 404 error'
    end
  end
end