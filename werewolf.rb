# werewolf.rb
require 'rubygems'
require 'sinatra'
require 'sequel'
require 'markaby_for_sinatra'

get '/' do
  sass :screen
  'Homepage'
end