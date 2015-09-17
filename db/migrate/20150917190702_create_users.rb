class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_hash
      t.text :image
      t.string :mobile
      t.text :file

      t.timestamps null: false
    end
    add_index :users, :email, unique: true
  end
end
