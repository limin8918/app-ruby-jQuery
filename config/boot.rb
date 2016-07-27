require 'rubygems'
require 'bundler/setup'
ENV['RACK_ENV'] ||= 'development'
Bundler.require :default, ENV['RACK_ENV']

Dir['./lib/controllers/**/*'].each { |filename| require filename }