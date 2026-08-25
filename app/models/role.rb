class Role < ApplicationRecord
  has_many :user_roles
  has_many :users, through: :user_roles

  has_many :roles_to_permissions, dependent: :destroy
  has_many :permissions, through: :role_to_permissions
end
