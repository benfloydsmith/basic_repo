class CreateAttends < ActiveRecord::Migration
  def change
    create_table :attends do |t|
      t.references :user, index: true
      t.references :movie, index: true

      t.timestamps
    end
  end
end
