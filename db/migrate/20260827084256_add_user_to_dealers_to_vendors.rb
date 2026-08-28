class AddUserToDealersToVendors < ActiveRecord::Migration[7.2]
  def change
    add_reference :dealers_to_vendors, :user, null: true, foreign_key: true
  end
end
