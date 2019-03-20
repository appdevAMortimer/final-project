class AddUnitOfMeasureToCompositions < ActiveRecord::Migration[5.1]
  def change
    add_column :compositions, :unit_of_measure, :string
  end
end
