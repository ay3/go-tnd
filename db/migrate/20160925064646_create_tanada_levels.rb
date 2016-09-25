class CreateTanadaLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :tanada_levels do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
