# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Creating user"

puts "///   Creating users"
4.times do
  user = User.new(
    email: Faker::Internet.free_email,
    password: Faker::Internet.password(8),
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name)
  if user.save
    puts user.first_name + " created!"
  end
end

puts "///   #{User.count} users in the database!"


puts "Creating product"

puts "///   Creating products"
4.times do
  product = Product.new(
    name: Faker::Color.color_name,
    category: Faker::Ancient.god)
  if product.save
    puts product.name + " created!"
  end
end

puts "///   #{Product.count} products in the database!"

puts "Creating basket"

puts "///   Creating baskets"
4.times do
  basket = Basket.new(
    user_id: User.all.sample.id)
  if basket.save
    puts "basket #" + basket.id.to_s + " created!"
  end
end

puts "///   #{Basket.count} baskets in the database!"


puts "Creating order"

puts "///   Creating orders"
4.times do
  order = Order.new(
    basket_id: Basket.all.sample.id,
    product_id: Product.all.sample.id,
    quantity: rand(1..6))
  if order.save
    puts "order #" + order.id.to_s + " created!"
  end
end

puts "///   #{Order.count} orders in the database!"


puts "Creating review"

puts "///   Creating reviews"
4.times do
  review = Review.new(
    order_id: Order.all.sample.id,
    rate: rand(1..5),
    content: Faker::Lorem.sentence(30, true, 10))
  if review.save
    puts "review #" + review.id.to_s + " created!"
  end
end

puts "///   #{Review.count} reviews in the database!"



