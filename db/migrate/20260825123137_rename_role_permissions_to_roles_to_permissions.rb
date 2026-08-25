class RenameRolePermissionsToRolesToPermissions < ActiveRecord::Migration[7.2]
  def change
    rename_table :role_permissions, :roles_to_permissions
  end
end
