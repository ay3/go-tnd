class ChangeColumnToSpot < ActiveRecord::Migration[5.0]
  def change
    change_column_null :spots, :tanada_level_id, false
    change_column_null :spots, :prefecture_id, false
    change_column_null :spots, :name, false
  end
end
