class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :image
      t.string :large_image
      t.references :artist, null: false, foreign_key: true
      t.integer :year
      t.text :genres

      t.timestamps
    end
  end
end
