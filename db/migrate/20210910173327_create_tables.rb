class CreateTables < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.numeric :person_count
      t.jsonb :dishes
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
