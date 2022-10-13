#!/usr/bin/ruby
# encoding: utf-8

# поток выполнения

puts "Start drive"

sleep 1

puts "First kilometer"

sleep 1

puts "Second kilometer"

sleep 1

puts "Third kilometer"

sleep 1

puts "Finish"

# Arrays
puts "Arrays"

fruits = ["apple", "orange", "banana"]

puts fruits

puts ""

puts fruits.to_s

basket = []

basket << "Apple"
basket.push("Melon", "Cherry")

puts basket.to_s

basket.delete("Apple")
basket.delete_at(0)

puts basket.to_s
