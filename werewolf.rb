# werewolf.rb
require 'rubygems'
require 'sinatra'
require 'sequel'
require 'lib/markaby_for_sinatra'
require 'db/link'

get '/stylesheets/:filename.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass params[:filename].to_sym
end

get '/' do
  markaby :index
end

get '/links/new' do
  @link = Link.new
  markaby :new
end