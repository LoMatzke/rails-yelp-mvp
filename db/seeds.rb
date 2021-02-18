puts 'Cleaning database...'
Restaurant.destroy_all
puts 'database is clean'

puts 'Creating restaurants...'
5.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )
  puts "restaurant #{restaurant.id} is created"
end

puts "Finished!"
