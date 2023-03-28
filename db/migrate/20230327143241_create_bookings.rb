class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :yacht, null: false, foreign_key: true
      t.string :start_date
      t.string :end_date
      t.string :total_price

      t.timestamps
    end
  end
end
