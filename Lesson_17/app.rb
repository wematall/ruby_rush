#!/usr/bin/ruby
# encoding: utf-8

# Среднее арифметическое трех чисел
# Напишите программу, которая находит среднее арифметическое трех, введенных пользователем целых чисел.

# Например:

# Введите число 1:
# > -23
# Введите число 2:
# > 42
# Введите число 3:
# > 5

# Среднее арифметическое: 8

puts "Программа считает среднее арифметическое трех целых чисел"

puts "Введите число 1: "

a = gets.chomp().to_i


puts "Введите число 2: "
b = gets.chomp().to_i

puts "Введите число 3: "
c = gets.chomp().to_i

result = (a + b + c) / 3.0

puts "Результат: #{result}"