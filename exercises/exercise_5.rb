require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

total_revenue = Store.sum(:annual_revenue)
puts "Total revenue: #{total_revenue}"

average_revenue = Store.average(:annual_revenue)
puts "Average annual revenue: #{average_revenue}"

num_high_revenue_stores = Store.where("annual_revenue >= ?", 1_000_000).count
puts "Number of stores generating $1M or more in annual sales: #{num_high_revenue_stores}"