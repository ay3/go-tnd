class RemoveCategorysFromSpots < ActiveRecord::Migration[5.0]
  def change
    remove_column :spots, :category, :string
  end
end
