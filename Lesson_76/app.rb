#!/usr/bin/ruby
# encoding: utf-8

# Калькулятор с Float
# Напишите калькулятор, который работает с числами с плавающей точкой.

# Обратите внимание, что в этом случае на ноль делить можно 
# (получится бесконечность Infinity) и не надо ловить исключения.

# Например:

# Первое число:
# > 92.7
# Второе число:
# > 0
# Выберите операцию (+ - * /):
# > /
# Результат:
# Infinity

puts "Посчитаем числа с точкой (Float)"

result = nil

puts "Первое число: "
a = STDIN.gets.chomp.to_f

puts "Второе число: "
b = STDIN.gets.chomp.to_f

puts "Выберите операцию (+ - * /): "
operation = STDIN.gets.chomp

case operation
when "+"
	result = (a + b).to_s
when "-"
	result = (a - b).to_s
when "*"
	result = (a * b).to_s
when "/"
	result = (a / b).to_s
else
	puts "Такой операции не предусмотрено"
end

puts "Результат: "
puts result 