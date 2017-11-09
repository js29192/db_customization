class ChangeBedTypeColumnName < ActiveRecord::Migration
  def change
  	rename_column :beds, :bed_type, :b_type
  	rename_column :bed_types, :bed_type, :b_type
  end
end
