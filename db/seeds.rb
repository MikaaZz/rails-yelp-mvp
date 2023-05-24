puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

restaurants = [
  { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'chinese', phone_number: '99998888' },
  { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian', phone_number: '99998887' },
  { name: 'Butguer King', address: '7 Boundary St, London E2 7JE', category: 'japanese', phone_number: '99998886' },
  { name: 'Pizza Hot', address: '56A Shoreditch High St, London E1 6PQ', category: 'french', phone_number: '99998885' },
  { name: 'Mc Donalds', address: '56A Shoreditch High St, London E1 6PQ', category: 'belgian', phone_number: '99998884' }
]

restaurants.each do |attr|
  restaurant = Restaurant.create(attr)
  puts "Created #{restaurant.name}"
end

puts 'Finished'
