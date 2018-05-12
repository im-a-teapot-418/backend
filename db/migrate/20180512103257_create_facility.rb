class CreateFacility < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      t.string :name, null: false

      t.integer :longtitude, null: false
      t.integer :latitude, null: false

      t.integer :type, null: false
    end
  end
end
