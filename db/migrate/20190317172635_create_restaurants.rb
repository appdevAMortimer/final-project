class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.integer :user_id
      t.string :menu_link

      t.timestamps
    end
  end
end
