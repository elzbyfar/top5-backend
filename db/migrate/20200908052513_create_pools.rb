class CreatePools < ActiveRecord::Migration[6.0]
  def change
    create_table :pools do |t|
      t.string :name
      t.text :tags, array: true, default: []
      t.text :eras, array: true, default: []
      t.boolean :for_groups

      t.timestamps
    end
  end
end
