class RemoveCategoryFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :Category, :string
  end
end
