# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 100.times do
#   product_name = Faker::Beer.name
#   product_url = Faker::Avatar.image
#   product_description = Faker::Beer.style

#   product = Product.new(name: product_name, price: rand(1.5..10), image_url: product_url, description: product_description)
    
#   product.save
# end


# 100.times do
#   product_name = Faker::Cannabis.strain
#   product_url = Faker::Avatar.image
#   product_description = Faker::Cannabis.cannabinoid

#   product = Product.new(name: product_name, price: rand(50..100), image_url: product_url, description: product_description)
    
#   product.save
# end

products = Product.where(supplier_id: nil)

products.each do |product|
  supplier_id = Supplier.all.sample.id
  product.supplier_id = supplier_id
  product.save!
end