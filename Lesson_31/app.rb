#!/usr/bin/ruby
# encoding: utf-8

# Инвертирование массива циклом
# Напишите программу, которая перевернет порядок элементов любого исходного массива.
# Переверните массив сами с помощью цикла.

# Не используя встроенные методы reverse или reverse!

# Например:

# Исходный массив:
# [1, 2, 3, 4, 5, 6, 7]
# Новый массив, полученный из исходного:
# [7, 6, 5, 4, 3, 2, 1]

array = [1, 2, 3, 4, 5, 6, 7]
index = 0

puts "Исходный массив:"
puts array.to_s

while (index < (array.length/2)) do 
	tmp = array[index]
	array[index] = array[(array.length - index - 1)]
  array[(array.length - index - 1)] = tmp
	index += 1
end

puts "Новый массив, полученный из исходного:"
puts array.to_s