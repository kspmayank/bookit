class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :city
      t.string :country
      t.string :state
      t.string :address

      t.timestamps null: false
    end
  end
end
