require 'rubygems'
require 'bundler'

Bundler.require :default, :development

Combustion.initialize! :all
run Combustion::Application
