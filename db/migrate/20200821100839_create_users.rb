class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :password
      t.string :confirm_password
      t.string :image
      t.string :vibe

      t.timestamps
    end
  end
end
