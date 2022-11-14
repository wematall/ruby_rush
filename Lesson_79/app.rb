#!/usr/bin/ruby
# encoding: utf-8

# Программа, выбрасывающая значение от 1 до 6 — одну игральную кость
# Cпрашиваем у юзера сколько кубиков кинуть.

puts "How many dice?"
number = gets.to_i

number.times do 
	puts rand(6) + 1
end

