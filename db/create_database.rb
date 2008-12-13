require 'rubygems'
require 'sequel'

DB = Sequel.sqlite('./teenwolf.db') 
DB_test = Sequel.sqlite('./teenwolf_test.db') 

BDs=[DB, DB_test]

BDs.each{|database|

  database.create_table :links do 
      primary_key :id
      column :title, :string
      column :url, :string
      column :description, :text
      column :votes, :integer, :default=>0
  end

  database.create_table :comments do 
      primary_key :id
      column :author, :string
      column :body, :text
      column :link_id, :integer
  end

}


