module Sinatra
  module Markaby    
    def markaby(content, options={})
      require 'markaby'
      render(:mab, content, options)
    end
    
  private
  
    def render_mab(content, options={})
      mab = ::Markaby::Builder.new
      instance_variables.each do |iv|
        mab.instance_variable_set(iv, instance_variable_get(iv))
      end
      mab.instance_eval content
    end
  end
end

Sinatra::EventContext.module_eval do
  include Sinatra::Markaby
end
