#!/usr/bin/ruby
# encoding: utf-8

# Палиндром с пробелами

# Палиндром с пробелами
# Сделайте вторую версию программы «Палиндром», 
# которая не учитывает наличие пробелов/знаков препинания во фразе.

# Сперва с помощью irb поймите, как убрать из строки все пробелы 
# (не только те, что по краям) и знаки препинания. 
# Посмотреть все методы объетка можно вызвав у него метод methods.

# Если не выйдет найти метод с пом. irb, 
# погуглите или посмотрите документацию на класс String.

# Palindrom v.2

puts "Проверить ваше слово палиндром или нет"
puts "Для выхода из программы введите \"end\" "

user_input = nil

while user_input != "end"
	user_input = STDIN.gets.chomp.strip.downcase

	user_input = user_input.gsub(/[^\p{L}\s\d]/,'')

	if user_input == "end"
		abort "Выход из программы"
	end

	if user_input == user_input.reverse
		puts "#{user_input} Это палиндром"
	else
		puts "#{user_input} Это не палиндром"
	end
end