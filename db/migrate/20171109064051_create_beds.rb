class CreateBeds < ActiveRecord::Migration
  def change
    create_table :beds, id: false do |t|
      t.integer :bed_number, null: false
      t.integer :room_number, null: false
      t.string :bed_type

      t.timestamps null: false
    end
  end
end
