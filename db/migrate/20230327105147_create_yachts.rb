class CreateYachts < ActiveRecord::Migration[7.0]
  def change
    create_table :yachts do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :size
      t.string :name
      t.integer :price_per_day
      t.string :brand

      t.timestamps
    end
  end
end
