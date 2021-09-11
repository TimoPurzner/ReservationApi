class CreateReservationsTables < ActiveRecord::Migration[6.1]
  def change
    create_table :reservation_tables do |t|
      t.references :table, index: true, foreign_key: { to_table: :tables }, null: false
      t.references :reservation, index: true, foreign_key: { to_table: :reservations }, null: false
      t.timestamps
    end
    add_index :reservation_tables, [:table_id, :reservation_id], unique: true
  end
end
