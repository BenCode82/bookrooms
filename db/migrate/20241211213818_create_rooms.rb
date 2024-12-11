class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :hotel_name
      t.string :description
      t.integer :rating
      t.integer :price
      t.string :address
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
