# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.delete_all
Category.create! id: 1, name: "Shoes"
Category.create! id: 2, name: "Clothing"
Category.create! id: 3, name: "Bags"
Category.create! id: 4, name: "Accessories"

Product.delete_all
Product.create! id: 1, name: "Vans", price: 22.49, active: true, category_id: 1
Product.create! id: 2, name: "Nike", price: 39.29, active: true, category_id: 1
Product.create! id: 3, name: "Converse", price: 29.99, active: true, category_id: 1


Order.delete_all
Order.create!( id: 1, subtotal: 12.00, tax: 0.00, shipping: 10.00, total: 22.00, status: 3)
Order.create!( id: 2, subtotal: 102.00, tax: 0.00, shipping: 22.00, total: 124.00, status: 2)
Order.create!( id: 3, subtotal: 100.00, tax: 7.00, shipping: 10.00, total: 117.00, status: 2)
