class VendorContact < ApplicationRecord
  belongs_to :vendor
  has_many :dealers_to_vendors
end
