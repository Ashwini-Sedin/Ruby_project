class AddMenuSubMenuTaskToPermissions < ActiveRecord::Migration[7.2]
  def change
    add_column :permissions, :menu, :string
    add_column :permissions, :sub_menu, :string
    add_column :permissions, :task, :string
  end
end
