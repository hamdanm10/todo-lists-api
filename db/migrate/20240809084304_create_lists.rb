class CreateLists < ActiveRecord::Migration[7.1]
  def change
    create_table :lists do |t|
      t.string :title, null: false
      t.string :description
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
