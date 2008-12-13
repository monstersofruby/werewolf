# werewolf.rb
require 'rubygems'
require 'sinatra'

get '/' do
  sass :styles
  'Homepage'
end