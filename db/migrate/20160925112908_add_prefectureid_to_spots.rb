class AddPrefectureidToSpots < ActiveRecord::Migration[5.0]
  def change
    add_column :spots, :prefecture_id, :integer, after: :prefectures
  end
end
