#!/usr/bin/ruby
# encoding: utf-8

# Игра для программистов «Угадайка»
# Напишите программу, которая загадывает случайное число от 0 до 15 включительно
#  и просит пользователя его угадать с трех попыток.
# Реализуйте через методы

# При каждом вводе пользователем числа программа отвечает «тепло»
#  если введенное число отличается от загаданного на 2 или меньше,
#   «холодно» если на 3 и больше. 
#   В каждом ответе программа также подсказывает больше или меньше введенное число,
#    чем загаданное (выводит на экран "нужно больше" или "нужно меньше").

# Если число угадано точно за 3 попытки – программа завершается и поздравляет
#  пользователя с победой. 
#  Если нет – выводит какое число было загадано.

#   Загадано число от 0 до 16, отгадайте какое?
#   > 8
#   Тепло (нужно больше)
#   > 10
#   Тепло (нужно меньше)
#   > 9
#   Ура, вы выиграли!
# В качестве развлечения найдите алгоритм гарантированно угадать число за 3 попытки.

# write a method
def find_number(comp_number, user_number)
	if user_number == comp_number
		puts "Ура, вы выиграли!"
		puts "Компьютер загадал: #{comp_number}, Ваше число: #{user_number}"
		exit
	elsif (user_number > comp_number)
		if user_number - comp_number >= 3
			puts "Холодно (нужно меньше)"
		else
			puts "Тепло (нужно меньше)"
		end
		
	else
		if comp_number - user_number >= 3
			puts "Холодно (нужно больше)"
		else
			puts "Тепло (нужно больше)"
		end
	end
end

# start game
max_counter = 3
counter = 0
comp_number = rand(16)
puts comp_number

puts "Загадано целое число от 0 до 15 включительно, отгадайте какое?"

while counter < max_counter do

	user_number = gets.chomp().to_i
	find_number(comp_number, user_number)

	counter += 1
	puts "Попыток осталось: " + (max_counter - counter).to_s

end

puts "Вы проиграли. Компьютер загадал: #{comp_number}, Ваше число: #{user_number}"