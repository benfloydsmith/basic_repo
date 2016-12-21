class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :alias
      t.string :email
      t.string :password_digest
      t.date :DOB

      t.timestamps
    end
  end
end
