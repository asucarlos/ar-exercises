require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"


Surrey = Store.create!(name: 'Surrey', annual_revenue: 224000, mens_apparel: true, womens_apparel: true)
Whistler = Store.create!(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Yaletown = Store.create!(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_store = Store.where(mens_apparel: true)
puts @mens_store

@mens_store.each do |store|
  puts store.name
  puts store.annual_revenue
end

@small_womens_store = Store.where("womens_apparel = true AND annual_revenue > 1000000")
puts @small_womens_store
