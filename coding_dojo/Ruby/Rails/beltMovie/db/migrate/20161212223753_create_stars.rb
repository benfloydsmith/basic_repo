class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.integer :rating
      t.integer :starable_id
      t.string :starable_type

      t.timestamps
    end
  end
end
