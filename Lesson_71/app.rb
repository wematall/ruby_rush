#!/usr/bin/ruby
# encoding: utf-8

# Проверяем email
# Напишите программу, которая проверяет является ли введенный текст email-ом.

# Например:

# $ ruby email.rb 
# Введите email:
# install.vv@gmail.com
# Спасибо!

# $ ruby email.rb 
# Введите email:
# Какая-то фигня!
# Это не email

# проверяем e-mail

# method to check email
#valid_email = '/^[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+$/i'

def is_valid_email?(email)
	if email =~ /^[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+$/i
		puts "email правильный"
		puts "Спасибо!"
	else
		puts "Какая-то фигня!"
		puts "Это не email"
	end
end


email = ARGV[0]

if email == nil
	puts "Введите email: "

	email = STDIN.gets.chomp
end

is_valid_email?(email)






