class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :rating
      t.string :director
      t.string :length
      t.references :user, index: true
      t.references :theater, index: true

      t.timestamps
    end
  end
end
