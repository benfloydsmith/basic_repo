class CreateProducs < ActiveRecord::Migration
  def change
    create_table :producs do |t|
      t.string :name
      t.float :price
      t.text :description
      t.references :user, index: true

      t.timestamps
    end
  end
end
