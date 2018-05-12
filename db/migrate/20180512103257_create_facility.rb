class CreateFacility < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      t.string :name, null: false

      t.float :longitude, null: false
      t.float :latitude, null: false

      t.integer :type
    end
  end
end
