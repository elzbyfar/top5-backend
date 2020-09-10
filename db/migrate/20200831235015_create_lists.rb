class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.references :user, null: false, foreign_key: true
      t.string :thread_name
      t.text :entries

      t.timestamps
    end
  end
end
