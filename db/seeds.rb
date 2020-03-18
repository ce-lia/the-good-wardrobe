require 'faker'

puts "Reset users, products and materials..."
  Product.destroy_all
  Material.destroy_all
  User.destroy_all


puts "Creating our users..."



  matti   = User.create!(email: 'matti@matti.com',password: 'password', first_name:"Matti",last_name:"Benoliel", address: "Marseille")
  sleep(1)
  celia   = User.create!(email: 'celia@celia.com',password: 'password', first_name:"Celia",last_name:"Franceschi",address:"Carcassone")
  sleep(1)
  david   = User.create!(email: 'peuks@peuks.com',password: 'password', first_name:"David",last_name:"Vanmak",address:"Aix en Provence")
  sleep(1)
  patrick = User.create!(email: 'patrick@patrick.com',password: 'password', first_name:"Patrick",last_name:"Blanc",address:"Marseille")
  sleep(1)
  louis = User.create!(email: 'louis@louis.com',password: 'password', first_name:"Louis",last_name:"Degoy",address:"Nice")
  sleep(1)


  category = ["pants","shirt","dress","shorts","t-shirt","sweat-shirt","caot","jacket","skirt"]

puts "Creating our materials..."

cotton = Material.create!(name: 'cotton', organic:false, recycled:false)
organic_cotton = Material.create!(name: 'organic cotton', organic:true, recycled:false)
recycled_cotton = Material.create!(name: 'recycled cotton', organic:false, recycled:true)
hemp = Material.create!(name: 'hemp', organic:false, recycled:false)
organic_hemp = Material.create!(name: 'organic hemp', organic:true, recycled:false)
recylced_hemp = Material.create!(name: 'recycled hemp', organic:false, recycled:true)
nylon = Material.create!(name: 'nylon', organic:false, recycled:false)
recycled_nylon = Material.create!(name: 'reycled nylon', organic:false, recycled:true)
polyester = Material.create!(name: 'polyester', organic:false, recycled:false)
recycled_polyester = Material.create!(name: 'recycled polyester', organic:false, recycled:true)
lyocell = Material.create!(name: 'lyocell')
rayon = Material.create!(name: 'rayon')


puts "Creating our products..."

10.times do |i|
  product = Product.new(
    title:Faker::Commerce.product_name,
    description:Faker::Lorem.sentence(word_count: 6),
    brand:Faker::Kpop.solo,
    second_hand:[true,false].sample,
    category: category.sample,
    origin:Faker::Address.country,
    user: User.all.sample
  )
  product.save
  end

  puts "Done !"
