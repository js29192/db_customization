class AddIndexToBedTypes < ActiveRecord::Migration
  def change
  	add_index :bed_types, :bed_type, unique: true
  end
end
