class CreateReservationsTables < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations_tables do |t|
      t.belongs_to :table
      t.belongs_to :reservation
      t.timestamps
    end
  end
end
