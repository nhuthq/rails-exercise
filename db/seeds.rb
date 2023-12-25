# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
category = Category.first
Product.create!(title: 'Ruby book', description: 'Learn Ruby programming', price: 12.99, published: true, category: category);
Product.create!(title: 'jQuery book', description: 'Learn jQuery', price: 11.99, published: true, category: category);
Product.create!(title: 'SASS book', description: 'Learn CSS with SASS', price: 19.99, published: true, category: category);
