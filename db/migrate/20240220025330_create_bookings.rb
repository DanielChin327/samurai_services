class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true
      t.references :samurai, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
