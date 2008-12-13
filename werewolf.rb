# werewolf.rb
require 'rubygems'
require 'sinatra'
require 'sequel'
require 'lib/markaby_for_sinatra'


configure do
  Sequel.connect('sqlite://db/teenwolf.db')
end

configure :test do
  Sequel.connect('sqlite://db/teenwolf_test.db')
end

require 'db/link'
require 'db/comment'

get '/stylesheets/:filename.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass params[:filename].to_sym
end

get '/' do
  @links = Link.order(:votes.desc).all
  markaby :index
end

get '/links/new' do
  @link = Link.new
  markaby :new
end

post '/links' do
  @link = Link.create(params)
  redirect "/links/#{@link.id}"
end

get '/links/:id' do
  @link = Link[params[:id]]
  markaby :show
end

post '/links/:link_id/votes' do
  @link=Link[params[:link_id]]
  @link.vote!
  markaby :create_vote, :layout=>false
end

post '/links/:link_id/comments' do
  Comment.create(params)
  redirect "/links/#{params[:link_id]}"
end