class AddIndexToBeds < ActiveRecord::Migration
  def change
  	add_index :beds, [:bed_number, :room_number], unique: true
  end
end
