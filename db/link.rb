class Link < Sequel::Model
  one_to_many :comments  
  
  def vote!
    votes=votes+1
    save
  end  
end