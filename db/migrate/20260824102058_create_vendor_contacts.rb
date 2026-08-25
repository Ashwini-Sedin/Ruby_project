class CreateVendorContacts < ActiveRecord::Migration[7.2]
  def change
    create_table :vendor_contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.references :vendor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
