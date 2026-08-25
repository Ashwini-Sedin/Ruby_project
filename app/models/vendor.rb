class Vendor < ApplicationRecord
  has_many :users
  has_many :vendor_contacts
end
