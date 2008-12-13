# werewolf.rb
require 'rubygems'
require 'sinatra'
require 'sequel'

get '/' do
  sass :styles
  'Homepage'
end