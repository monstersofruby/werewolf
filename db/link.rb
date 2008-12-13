 DB=Sequel.connect('sqlite://db/teamwolf.db')
class Link < Sequel::Model
  one_to_many :comments  
end