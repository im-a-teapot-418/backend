class CreateQrCode < ActiveRecord::Migration[5.2]
  def change
    create_table :qr_codes do |t|
      t.references :facility, index: true, null: false

      t.string :code, null: false

      t.boolean :active, default: true, null: false

      t.timestamps
    end
  end
end
