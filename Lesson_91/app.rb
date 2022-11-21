#!/usr/bin/ruby
# encoding: utf-8

# Где что объявлено?
# Объявить три переменных:

# Глобальную переменную $a
# Локальную переменную b
# Переменную c внутри метода method
# Проверить объявлена ли каждая из них: 
# внутри метода method и в основном тексте программы.

# Пример результата:

# > ruby scopes.rb
# Переменная '$a': global-variable
# Переменная 'b':
# Переменная 'c': local-variable
# Переменная '$a': global-variable
# Переменная 'b': local-variable
# Переменная 'c':


$a = 5
b = 7

def my_method()
	c = 7

	if defined?($a)
		puts "Variable '$a': global variable"
	else
		puts "Variable '$a': is not defined"
	end

	if defined?(b)
		puts "Variable 'b': local-variable"
	else
		puts "Variable 'b': is not defined"
	end

	if defined?(c)
		puts "Variable 'c': local-variable"
	else
		puts "Variable 'c': is not defined"
	end
end

puts ""
puts "видимость из метода"
puts ""
my_method

# проверим доступность переменных в теле программы
puts ""
puts "Видимость из программы"
puts ""

if defined?($a)
	puts "Variable '$a': global variable"
else
	puts "Variable '$a': is not defined"
end

if defined?(b)
	puts "Variable 'b': local-variable"
else
	puts "Variable 'b': is not defined"
end

if defined?(c)
	puts "Variable 'c': local-variable"
else
	puts "Variable 'c': is not defined"
end
