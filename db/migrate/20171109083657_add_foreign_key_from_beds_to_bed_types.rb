class AddForeignKeyFromBedsToBedTypes < ActiveRecord::Migration
  def change
  	add_foreign_key :beds, :bed_types, column: :bed_type, primary_key: :bed_type, on_delete: :cascade
  end
end
