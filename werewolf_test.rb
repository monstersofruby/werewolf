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

end