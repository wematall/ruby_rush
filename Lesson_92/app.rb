#!/usr/bin/ruby
# encoding: utf-8

# Область видимости в классах
# Поймем еще раз «классовую» область видимости.

# Объявите переменную variable
# После чего объявите класс MyClass и напишите у него конструктор, 
# который создаёт переменную экземпляра @variable
# Напишите у класса метод check_variables, 
# который проверяет объявлены ли переменные variable и @variable
# В основной программе создайте экземпляр класса MyClass 
# и вызовите у него метод check_variables, 
# а потом проверьте объявленность тех же переменных в основном тексте программы.


variable = 7

class MyClass
	def initialize
		@variable = 5
	end

	def check_variables
		puts "scopes variables in class instance"
		puts ""

		if defined?(@variable)
			puts "Variable '@variable': is defined = #{@variable}"
		else
			puts "Variable '@variable' is not defined"
		end

		if defined?(variable)
			puts "Variable 'variable' is defined = #{variable}"
		else
			puts "Variable 'variable' is not defined"
		end

	end
end

instance_1 = MyClass.new

instance_1.check_variables

puts ""
puts "Visibility of variables in application"

if defined?(@variable)
	puts "Variable '@variable': is defined = #{@variable}"
else
	puts "Variable '@variable' is not defined"
end

if defined?(variable)
	puts "Variable 'variable' is defined = #{variable}"
else
	puts "Variable 'variable' is not defined"
end



