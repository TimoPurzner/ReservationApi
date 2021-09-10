class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :tables do |t|
      t.string :place_number
      t.numeric :seats_numbers    
      t.timestamps
    end
  end
end
