User.create! name: "Admin",
  email: "admin@gmail.com",
  password: "foobar",
  password_confirmation: "foobar",
  admin: true,
  activated: true,
  activated_at: Time.zone.now

User.create! name: "chung",
  email: "chung@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  admin: true,
  activated: true,
  activated_at: Time.zone.now

10.times do |n|
  Faker::Config.locale = :vi
  name = Faker::Name.name
  email = "user#{n+1}@gmail.com"
  password = "password"
  User.create! name: name,
    email: email,
    password: password,
    password_confirmation: password,
    activated: true,
    activated_at: Time.zone.now
end

10.times do |n|
	Cat.create! name: Faker::Creature::Cat.name,
	category: Faker::Creature::Cat.breed,
	description: Faker::Creature::Cat.registry,
	price: 9000,
	available: true
end

10.times do |n|
	Food.create! name: Faker::Food.dish,
	category: "Appetizer",
	description: Faker::Food.description,
	price: 18000,
	supportable: true
end
