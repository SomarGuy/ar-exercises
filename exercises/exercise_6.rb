require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Create an employee for @store1
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

# Create more employees for @store1 and @store2
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 50)
@store1.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 55)
@store2.employees.create(first_name: "Mike", last_name: "Smith", hourly_rate: 45)
@store2.employees.create(first_name: "Mary", last_name: "Johnson", hourly_rate: 52)
