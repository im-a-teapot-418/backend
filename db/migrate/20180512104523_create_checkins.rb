class CreateCheckins < ActiveRecord::Migration[5.2]
  def change
    create_table :checkins do |t|
      t.references :user, index: true
      t.references :facility, index: true

      t.timestamps
    end
  end
end
