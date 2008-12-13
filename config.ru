# This file goes in domain.com/config.ru
require 'sinatra'
require 'rubygems'
 
Sinatra::Application.default_options.merge!(
  :run => false,
  :env => :production
)
 
require 'werewolf.rb'
run Sinatra.application