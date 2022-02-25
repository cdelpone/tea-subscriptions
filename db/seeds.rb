# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
customer_1 = Customer.create!({first_name: 'Clark', last_name: 'Kent', email: 'c.kent@dailyplanet.com', address: '1234 Farm Rd, Smallville KA'})
customer_2 = Customer.create!({first_name: 'Owen', last_name: 'Lars', email: 'uncleowen@moisturefarms.com', address: '5678 Dusty Rd, Tatooine, OK'})
customer_3 = Customer.create!({first_name: 'Will', last_name: 'Wheaton', email: 'notthatone@willwheatonfarms.com', address: '3456 Med Bay Ave, Starfield, MI'})
customer_4 = Customer.create!({first_name: 'Brian', last_name: 'Grain', email: 'braingrain@customers.net', address: '7812 Famers Rd Fargo, ND'})
customer_5 = Customer.create!({first_name: 'Arthur', last_name: 'Hoggett', email: 'a.hoggett@babefarms.com', address: '84625 Main St, Spokane, WA'})

subscription_1 = Subscription.create!({title: 'Green tea', price: 12, status: 1, frequency: 0, customer_id: customer_1.id})
subscription_2 = Subscription.create!({title: 'Blacktea', price: 8, status: 1, frequency: 0, customer_id: customer_1.id})
subscription_3 = Subscription.create!({title: 'Green tea', price: 14, status: 1, frequency: 0, customer_id: customer_2.id})
subscription_4 = Subscription.create!({title: 'Sleepytime tea', price: 10, status: 1, frequency: 1, customer_id: customer_3.id})
subscription_5 = Subscription.create!({title: 'Blacktea', price: 9, status: 1, frequency: 1,  customer_id: customer_3.id})
subscription_6 = Subscription.create!({title: 'Green tea', price: 11, status: 0, frequency: 1, customer_id: customer_4.id})
subscription_7 = Subscription.create!({title: 'Sleepytime tea', price: 7, status: 1, frequency: 2,  customer_id: customer_4.id})
subscription_8 = Subscription.create!({title: 'Earl Grey', price: 13, status: 0, frequency: 2,  customer_id: customer_5.id})
