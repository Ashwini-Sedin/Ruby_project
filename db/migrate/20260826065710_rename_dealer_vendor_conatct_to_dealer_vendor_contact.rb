class RenameDealerVendorConatctToDealerVendorContact < ActiveRecord::Migration[7.2]
  def change
    rename_table :dealer_vendor_conatcts, :dealer_vendor_contacts
    remove_reference :dealer_vendor_contacts, :vendor_contact, foreign_key: true
    add_reference :dealer_vendor_contacts, :vendor, foreign_key: true
    add_column :dealer_vendor_contacts, :name, :string

  end
end
