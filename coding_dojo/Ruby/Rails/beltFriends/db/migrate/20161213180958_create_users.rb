class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :alias
      t.string :email
      t.string :password_digest
      t.date :DOB

      t.timestamps
    end
  end
end