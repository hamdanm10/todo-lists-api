class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.references :list, foreign_key: true, index: true, null: false
      t.string :title, null: false
      t.boolean :is_checked_flag, null: false, default: false
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
