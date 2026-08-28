class DealerVendorContact < ApplicationRecord
  belongs_to :dealer
  belongs_to :vendor
end
