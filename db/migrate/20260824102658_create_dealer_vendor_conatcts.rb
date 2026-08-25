class CreateDealerVendorConatcts < ActiveRecord::Migration[7.2]
  def change
    create_table :dealer_vendor_conatcts do |t|
      t.references :dealer, null: false, foreign_key: true
      t.references :vendor_contact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
