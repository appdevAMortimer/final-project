class DropUserTable < ActiveRecord::Migration[5.1]
  def change
  end
  def up
    drop_table :users
  end
end
