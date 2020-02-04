require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

@store1 = Store.find_by(id: 1)
puts @store1.employees.create(last_name: "yang", hourly_rate: 60).errors.messages
puts @store1.employees.create(first_name: "edi", last_name: "yang", hourly_rate: 30).errors.messages

puts Store.create(name: "bad store", annual_revenue: 300000, mens_apparel: false, womens_apparel: false).errors.messages

puts "enter a store name"
store_name = gets.chomp
puts Store.create(name: store_name).errors.messages




