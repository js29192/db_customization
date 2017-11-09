class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms, id: false do |t|
      t.primary_key :room_number
      t.integer :pg_id
      t.integer :floor

      t.timestamps null: false
    end
  end
end
