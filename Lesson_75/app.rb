#!/usr/bin/ruby
# encoding: utf-8

# Целочисленный калькулятор
result = nil

puts "Будем считать"

puts "Первое число: "
a = STDIN.gets.chomp.to_i

puts "Второе число: "
b = STDIN.gets.chomp.to_i 

puts "Выберите операцию (+ - * /): "
operation = STDIN.gets.chomp

begin

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
	result = "Такая операция не предусмотрена"
end

rescue ZeroDivisionError => error
	puts "На ноль делить нельзя " + error.message
end

puts "Результат: "
puts result