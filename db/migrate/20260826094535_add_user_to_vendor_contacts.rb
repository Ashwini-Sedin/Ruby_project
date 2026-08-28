class AddUserToVendorContacts < ActiveRecord::Migration[7.2]
  def change
    add_reference :vendor_contacts, :user, foreign_key: true
  end
end
