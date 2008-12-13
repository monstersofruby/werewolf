require 'rubygems'
require 'shoulda'
require 'sinatra'
require 'sinatra/test/unit'
require 'werewolf'

class WerewolfTest < Test::Unit::TestCase 
   
  context 'Werewolf team application' do
    
    should "have at least one test" do 
      assert true
    end
    
    should "have no fear" do
      get_it '/'
      assert true
    end
  end  
  
  context "Create new link" do
     should "get an empty form" do
       get_it '/links/new'
     end
     
     should "create a new link" do
       post_it '/links', :title=>'link title', :url=>'http://www.google.com', :description=>'nice!'
       assert false
     end   
     
  end
end