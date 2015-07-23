require 'faker'


#Create Users
15.times do
  User.create!(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      password: Faker::Lorem.characters(10)
    )
end


users = User.all

#Create Items
100.times do
  Item.create!(
    user: users.sample,
    name: Faker::Lorem.word
  )
end

puts "Seed Finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"