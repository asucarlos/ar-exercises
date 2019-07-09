require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "type the name of the store"
@store_name = $stdin.gets.chomp
@store_name = Store.create!(name: @store_name, annual_revenue: 0, mens_apparel: true, womens_apparel: true)


# Your code goes here ...
