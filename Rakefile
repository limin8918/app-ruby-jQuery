require File.dirname(__FILE__) + '/config/boot'

# begin
#   require 'jasmine'
#   load 'jasmine/tasks/jasmine.rake'
# rescue LoadError
# end

FileList['./lib/tasks/**/*.rake'].each { |task| load task } unless ENV['ENV_LABEL'] == 'prod'

task :default => :specs
