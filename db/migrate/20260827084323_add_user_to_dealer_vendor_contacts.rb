class AddUserToDealerVendorContacts < ActiveRecord::Migration[7.2]
  def change
    add_reference :dealer_vendor_contacts, :user, null: true, foreign_key: true
  end
end
