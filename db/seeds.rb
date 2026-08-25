# Create test users for Devise authentication demo
users = [
  { email: "admin@example.com", password: "password123", password_confirmation: "password123" },

  { email: "test@example.com", password: "password123", password_confirmation: "password123" }
]

users.each do |user_attrs|
  User.find_or_create_by!(email: user_attrs[:email]) do |u|
    u.password = user_attrs[:password]
    u.password_confirmation = user_attrs[:password_confirmation]
  end
end
puts "Seeded #{User.count} users successfully!"

