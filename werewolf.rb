# werewolf.rb
require 'rubygems'
require 'sinatra'
require 'sequel'

get '/' do
  sass :screen
  'Homepage'
end