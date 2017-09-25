# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.all.each do |category|
  100.times do |i|
    image = Product.all.sample.image_url
    image1 = Product.all.sample.image1_url
    image2 = Product.all.sample.image2_url
    image3 = Product.all.sample.image3_url
    params = {
      name: FFaker::CheesyLingo.title,
      description: FFaker::CheesyLingo.paragraph,
      price: FFaker::AddressCH.postal_code,
      image_url: image,
      vote: rand(0..5),
      category_id: category.id,
      image1_url: image1,
      image2_url: image2,
      image3_url: image3
    }
    Product.create(params)
    puts "Creating product with category #{category.id}"
  end
end