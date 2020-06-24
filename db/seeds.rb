# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MenuItem.destroy_all

drinks = ["Coke", "Fanta", "Sprite", "Heineken", "Paulaner"]

names = ["Chicken Parmy", "Garlic Chicken & Bacon Ranch", "Reef, Steak & Bacon",
  "Chicken, Bacon & Avocado", "Loaded Supreme", "Mega Meatlovers",
  "Chicken & Camembert", "Peri Peri Chicken", "BBQ Chicken & Rasher Bacon",
  "Garlic Prawn"]

descriptions = ["22 crumbed chicken bites with crispy rasher bacon,
  creamy mozzarella & rich tomato sauce.",

  "Succulent chicken, crispy rasher bacon, spinach and red onion, topped with a
    creamy ranch sauce and served on a pizza sauce
    base with zesty garlic sauce.",

  "Juicy prawns, seasoned steak & crispy
    rasher bacon, topped with creamy hollandaise sauce & spring onions.",

  "Succulent seasoned chicken, creamy avocado, crispy rasher bacon & red onion,
    topped with hollandaise sauce & spring onions.",

  "Ground beef, crispy rasher bacon, mushroom, pepperoni, Italian sausage,
    fresh baby spinach, smoked leg ham, pineapple, topped with oregano,
    tomato capsicum sauce & spring onion.",

  "Mega loaded, mega tasty. Featuring seasoned chicken, pork & fennel sausage,
    crumbled beef, pepperoni slices, Italian sausage & crispy rasher bacon,
    brought together with a Hickory BBQ sauce.",

  "Succulent chicken, melted camembert, crispy rasher bacon, Italian cherry
    tomatoes, baby spinach & sliced red onion, topped with hollandaise sauce",

  "A flavoursome pairing of seasoned chicken pieces, Italian cherry tomatoes,
    sliced red onion & baby spinach, topped with a swirl of our addictive
    peri peri sauce.",

  "The perfect combination of succulent chicken pieces, crispy rasher bacon &
    slices of red onion on a BBQ sauce base.",

  "Juicy prawns, paired with fresh baby spinach & diced tomato on a crème
    fraiche & zesty garlic sauce base, topped with oregano."]

prices = [8.99, 7.99, 11.99, 12.99]
counter = 0
names.each do |name|

  item = MenuItem.new
  item.name = name
  item.food_type = "pizza"
  item.description = descriptions[counter]
  item.price = prices.sample
  item.save
  counter += 1
end

drinks.each do |drink|
  item = MenuItem.new
  item.name = drink
  item.food_type = "drink"
  item.description = "Cold and refreshing"
  item.price = 1.99
  item.save
end

print "DONE"
