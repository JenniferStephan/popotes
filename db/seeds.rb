# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all




ingredients = ["Céréales contenant du gluten", "Crustacés", "Oeufs", "Poissons", "Arachides", "Soja", "Lait", "Fruits à coques", "Céleri", "Moutarde", "Graines de sésame"]

ingredients.each do |i|
  Ingredient.create(name: i)
end
