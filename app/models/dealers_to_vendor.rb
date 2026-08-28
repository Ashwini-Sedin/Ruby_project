class DealersToVendor < ApplicationRecord
  belongs_to :vendor
  belongs_to :vendor_contact
  belongs_to :dealer
end
