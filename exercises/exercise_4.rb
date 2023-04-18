require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Create three new stores
Store.create(name: 'Surrey', annual_revenue: 224_000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Whistler', annual_revenue: 1_900_000, mens_apparel: true, womens_apparel: false)
Store.create(name: 'Yaletown', annual_revenue: 430_000, mens_apparel: true, womens_apparel: true)

# Fetch stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Loop through each store and output their name and annual revenue
@mens_stores.each do |store|
  puts "#{store.name}: #{store.annual_revenue}"
end

# Fetch stores that carry women's apparel and have an annual revenue less than $1M
@womens_stores = Store.where(womens_apparel: true, annual_revenue: 0...1_000_000)
