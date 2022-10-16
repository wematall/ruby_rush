#!/usr/bin/ruby
# encoding: utf-8

# example 1 while loop

count = 1

while count <= 5 do 
	puts count
	count += 1
	sleep 0.5 
end

puts "Я иду искать!"


# example 2 for in loop
# 0 - good eggs, and other bad eggs
puts "Broken eggs example"
eggs = [0, 0, 0, 0, 1, 1, 0, 0, 1, 23, 0, 2, 0, 25, 0, 0, 1, 0]

good_eggs = []
broken_eggs_count = 0

for element in eggs do 
	if element != 0
		broken_eggs_count += 1
	else
		good_eggs << element
	end
end

puts "All eggs: #{eggs.to_s}"
puts "All eggs in box amount: #{eggs.length}"
puts "Good eggs in box: #{good_eggs.to_s}"
puts "All good eggs in box: #{good_eggs.length}"
puts "Broken eggs: #{broken_eggs_count}"
puts "All broken eggs amount in box: #{broken_eggs_count}"
puts ""

# example Кто такая Элис
puts "Кто такая Элис"
puts "Вводи имена"

names = []
user_input = nil

while  user_input != '' do 
	user_input = gets.encode('UTF-8').chomp
	names << user_input
end

for element in names do 
	puts " С нами #{element}"
	sleep 1
	if element == "Элис"
		puts "Элис?? А кто такая Элис?"
		break
	end
end

puts "Что это за девочка и где она живет?"
sleep 1
puts "А вдруг она не курит? А вдруг она не пьёт?"
sleep 1
puts "А мы с такими рожами возьмем да и припрёмся к Элис... :)"
