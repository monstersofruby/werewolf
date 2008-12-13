require 'rubygems'
require 'sequel'

DB = Sequel.sqlite('./teamwolf.db') 

DB.create_table :links do 
    primary_key :id
    column :title, :string
    column :url, :string
    column :description, :text
    column :created_at, :datetime
    column :votes, :integer, :default=>0
end

DB.create_table :commets do 
    primary_key :id
    column :author, :string
    column :body, :text
    column :link_id, :integer
    column :created_at, :datetime
end
