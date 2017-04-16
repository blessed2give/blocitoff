15.times do
  User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end
users = User.all

75.times do
  Item.create(
    user: users.sample,
    name: Faker::Job.field
  )
end
items = Item.all

puts "Seed finished"
puts "#{users.count} users created"
puts "#{items.count} items created"
