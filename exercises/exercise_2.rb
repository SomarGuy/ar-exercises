require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

puts "Loading first store (id = 1) from the database..."
@store1 = Store.find(1)

puts "Loading second store from the database..."
@store2 = Store.find_by(id: 2)

puts "Updating first store name..."
@store1.update(name: "New Store Name")

puts "First store's updated name: #{@store1[:name]}"

