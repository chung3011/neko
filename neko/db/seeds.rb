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

9.times do |n|
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

9.times do |n|
	Cat.create! name: Faker::Creature::Cat.name,
	category: Faker::Creature::Cat.breed,
	description: Faker::Creature::Cat.registry,
	price: 0,
	available: true,
	point: rand(1..5)
end

9.times do |n|
	Food.create! name: Faker::Food.dish,
	category: "Appetizer",
	description: Faker::Food.description,
	price: rand(20000..50000),
	supportable: true,
	point: rand(1..5)
end

foods = Food.order(:created_at)
foods.each do |food|
	3.times do |n|
		FoodImage.create! link: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQcRLIMVXIvsjS1mTXTngCqxryCE3GqG5HhoxYFtYeSdACP-kQ9",
					food_id: food.id
	end
end

cats = Cat.order(:created_at)
cats.each do |cat|
	3.times do |n|
		CatImage.create! link: "https://www.nationalgeographic.com/content/dam/news/2018/05/17/you-can-train-your-cat/02-cat-training-NationalGeographic_1484324.jpg",
					cat_id: cat.id
	end   

end
