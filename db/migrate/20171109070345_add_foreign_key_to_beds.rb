class AddForeignKeyToBeds < ActiveRecord::Migration
  def change
  	add_foreign_key :beds, :rooms, column: :room_number, primary_key: :room_number, on_delete: :cascade
  end
end
