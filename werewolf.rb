# werewolf.rb
require 'rubygems'
require 'sinatra'
require 'sequel'

get '/' do
  sass :screen
  markaby :index
end