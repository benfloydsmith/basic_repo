class AddCategoryToProduct < ActiveRecord::Migration
  def change
    add_column :products, :Category, :string
  end
end
