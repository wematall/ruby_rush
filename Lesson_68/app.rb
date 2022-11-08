#!/usr/bin/ruby
# encoding: utf-8

# palindrom v.1


puts "Проверить ваше слово палиндром или нет"
puts "ДЛя выхода из программы введите \"end\" "

user_input = nil

while user_input != "end"
	user_input = STDIN.gets.chomp.strip.downcase

	if user_input == user_input.reverse
		puts "Это палиндром"
	else
		puts "Это не палиндром"
	end
end


