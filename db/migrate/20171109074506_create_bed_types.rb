class CreateBedTypes < ActiveRecord::Migration
  def change
    create_table :bed_types do |t|
      t.string :bed_type, null: false

      t.timestamps null: false
    end
  end
end
