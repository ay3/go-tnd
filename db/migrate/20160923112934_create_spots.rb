class CreateSpots < ActiveRecord::Migration[5.0]
  def change
    create_table :spots do |t|
      t.string :name
      t.string :prefectures
      t.integer :postcode
      t.string :address
      t.integer :mapcode
      t.decimal :lat
      t.decimal :lng
      t.text :access
      t.string :category
      t.text :url
      t.string :picture
      t.text :memo

      t.timestamps
    end
  end
end
