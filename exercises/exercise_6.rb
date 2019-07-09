require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store4 = Store.find_by(id: 4)
@store5 = Store.find_by(id: 5)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 50)
@store1.employees.create(first_name: "Rami", last_name: "Hassanein", hourly_rate: 100)
s = @store2.employees.create(first_name: "Asuka", last_name: "Kuwahara", hourly_rate: 60)
puts s.errors.messages
@store2.employees.create(first_name: "Yifei", last_name: "IsGreat", hourly_rate: 40)
@store4.employees.create(first_name: "Yifei", last_name: "IsGreat", hourly_rate: 40)
@store5.employees.create(first_name: "Yifei", last_name: "IsGreat", hourly_rate: 40)



# Your code goes here ...
