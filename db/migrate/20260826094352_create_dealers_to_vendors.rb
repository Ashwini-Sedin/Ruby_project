class CreateDealersToVendors < ActiveRecord::Migration[7.2]
  def change
    create_table :dealers_to_vendors do |t|
      t.references :vendor, null: false, foreign_key: true
      t.references :vendor_contact, null: false, foreign_key: true
      t.references :dealer, null: false, foreign_key: true
      t.string :vendor_dealer_id

      t.timestamps
    end
  end
end
