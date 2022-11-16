# Hi!, use the rails db:seed command to create data.

puts "--------> db:seed (Started)"

admin = User.create(email: "admin@gmail.com", password: "123246", password_confirmation: "123246", user_name: "Admin")
Task.create(description: "Hi!", resolved: false, user_id: admin.id)

puts "--------> db:seed (Successful)"
