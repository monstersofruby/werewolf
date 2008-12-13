class Link < Sequel::Model
  one_to_many :comments  
  
  def vote!
    update(:votes=> votes+1)
  end  
end