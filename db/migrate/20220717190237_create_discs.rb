class CreateDiscs < ActiveRecord::Migration[6.1]
  def change
    create_table :discs do |t|
      t.string :brand
      t.string :name
      t.integer :speed
      t.integer :glide
      t.integer :turn
      t.integer :fade
      t.string :plastic
      t.integer :weight
      t.integer :bag_id

      t.timestamps
    end
  end
end
