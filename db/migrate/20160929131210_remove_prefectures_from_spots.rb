class RemovePrefecturesFromSpots < ActiveRecord::Migration[5.0]
  def change
    remove_column :spots, :prefectures, :string
  end
end
