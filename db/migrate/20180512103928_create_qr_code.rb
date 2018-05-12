class CreateQrCode < ActiveRecord::Migration[5.2]
  def change
    create_table :qr_codes do |t|
      t.references :facilities, index: true, null: false

      t.string :code, null: false

      t.boolean :valid, default: true, null: false

      t.timestamps
    end
  end
end
