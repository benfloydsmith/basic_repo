class AddCategoryToProducts < ActiveRecord::Migration
  def change
  	add_column :producs, :category, :string
  	#Name of Table you want to change, Name of new Column, Type of Column(String)
  	# remove_column :producs, :name
  	#remove 
  end
end
