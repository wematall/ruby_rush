#!/usr/bin/ruby
# encoding: utf-8

# Объединение массивов
# Объявите в программе два разных массива строк: 
# один, состоящий из нескольких мужских имен, 
# другой — из женских.

# Как угодно создайте третий массив так, 
# чтобы он состоял из всех элементов первого и второго массивов 
# (т. е. из всех мужских и женских имен), не повторяя эти имена в коде. 
# То есть, используя элементы из первых двух массивов.

# Потом выведите все три массива на экран.

# Например:

# Мужчины
# ["Gena", "George", "Misha"]
# Женщины
# ["Katrin", "Liza", "Masha"]
# Все вместе
# ["Gena", "George", "Misha", "Katrin", "Liza", "Masha"]

a = ["Gena", "George", "Misha"]
b = ["Katrin", "Liza", "Masha"]

c = a + b 

puts "Array a: " + a.to_s
puts "Array b: " + b.to_s
puts "Array c: " + c.to_s