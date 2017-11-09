class CreatePgs < ActiveRecord::Migration
  def change
    create_table :pgs do |t|
      t.string :name
      t.string :city

      t.timestamps null: false
    end
  end
end
