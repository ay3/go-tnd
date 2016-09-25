class AddTanadalevelidToSpots < ActiveRecord::Migration[5.0]
  def change
    add_column :spots, :tanada_level_id, :integer, after: :category
  end
end
