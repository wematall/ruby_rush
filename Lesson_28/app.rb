#!/usr/bin/ruby
# encode: utf-8

# Массив из N элементов и сумма
# Написать программу, которая выводит массив чисел от 1 до N. 
# И выводит сумму всех чисел этого массива. 
# Число N спрашивается у пользователя из консоли.

# Например:

# Введите N
# > 7
# [1, 2, 3, 4, 5, 6, 7]
# Сумма чисел: 28

numbers = []
summ = 0
i = 1
puts "Введите N (кол-во элементов в массиве"
n = gets.chomp.to_i

while  i <= n do 
	numbers << i 
	summ += i
	i += 1
end

puts numbers.to_s
puts "Сумма чисел: #{summ}"


# PS
#
# Сумму можно было не считать в цикле, а получить из финального массива
#
# array.inject(0) { |sum,x| sum + x }
#
# А начиная с Ruby 2.4.0 сумму можно вычислить простым методом sum
#
# array.sum

puts numbers.sum

summ = numbers.inject(0) {|sum, x| sum + x}
puts summ