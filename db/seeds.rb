# Create test users for Devise authentication demo
users = [
  { username:"admin", email: "admin@example.com", password: "password123", password_confirmation: "password123" },

  {username:"test", email: "test@example.com", password: "password123", password_confirmation: "password123" }
]

users.each do |user_attrs|
  User.find_or_create_by!(email: user_attrs[:email]) do |u|
     u.username = user_attrs[:username]
    u.password = user_attrs[:password]
    u.password_confirmation = user_attrs[:password_confirmation]
  end
end
puts "Seeded #{User.count} users successfully!"


vendor1=Vendor.find_or_create_by!(name: "ABC technologies")
vendor2=Vendor.find_or_create_by!(name: "XXX technologies")
vendor3=Vendor.find_or_create_by!(name: "Global Systems")


dealer1 = Dealer.find_or_create_by!(name: "sathya dealer")
dealer2 = Dealer.find_or_create_by!(name: "vasanth&co dealer")
dealer3 = Dealer.find_or_create_by!(name: "yyy")

contact1= VendorContact.find_or_create_by!(email: "ash@abc.com")do |contact|
   contact.name="Ash"
   contact.phone ="9780566378"
   contact.vendor = vendor1
end
contact2= VendorContact.find_or_create_by!(email: "abi@xxx.com")do |contact|
   contact.name="Abi"
   contact.phone ="9876543211"
   contact.vendor = vendor2
end

contact3= VendorContact.find_or_create_by!(email: "priya@global.com")do |contact|
   contact.name="Priya Sharma"
   contact.phone ="876543212"
   contact.vendor = vendor3
end


DealersToVendor.find_or_create_by!(
vendor: vendor1,
  vendor_contact: contact1,
  dealer: dealer1
)

DealersToVendor.find_or_create_by!(
  vendor: vendor1,
  vendor_contact: contact1,
  dealer: dealer2
)

DealersToVendor.find_or_create_by!(
  vendor: vendor2,
  vendor_contact: contact2,
  dealer: dealer2
)

DealersToVendor.find_or_create_by!(
  vendor: vendor2,
  vendor_contact: contact2,
  dealer: dealer3
)

DealersToVendor.find_or_create_by!(
  vendor: vendor3,
  vendor_contact: contact3,
  dealer: dealer1
)



puts "Seeded data successfully"