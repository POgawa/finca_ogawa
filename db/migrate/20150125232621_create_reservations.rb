class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.date :check_in
      t.date :check_out
      t.string :notes

      t.timestamps
    end
  end
end
