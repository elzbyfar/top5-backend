class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :thumbnail
      t.string :large_image
      t.string :popularity
      t.string :genres

      t.timestamps
    end
  end
end
