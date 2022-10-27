#!/usr/bin/ruby
# encoding: utf-8

# Написать программу, 
# которая в качестве параметров берёт произвольное число
#  и три словоформы
#  и возвращает ту форму слова, которой соответствует число

# Ошибка в склоняторе
# В нашем методе sklonenie есть один баг (ошибка) 
# — он неправильно работает с числами от 11 до 14.

# Например, вместо 11 негритят он вернет 11 негритенок, 
# а вместо 14 негритят — 14 негритенка.

# Исправьте эту ошибку в методе.

form_1 = "krokodil"
form_2 = "krokodila"
form_3 = "krokodilov"

def sklonenie (number, form_1, form_2, form_3)
	number = number

	if (number == nil || !number.is_a?(Numeric))
		number = 0
	end 

	#puts number
	# добавил проверку на 11 и 14 (исправление бага)
	if (number >= 11 && number <=14)
		return form_3
	end

	ostatok = number % 10

	if (ostatok == 1)
		return form_1
	end

	if (ostatok >= 2 && ostatok <= 4)
		return form_2
	end

	if (ostatok >= 5 && ostatok <=9 || ostatok == 0)
		return form_3
	end

end

puts "Введите число, сколько крокодилов: "
skolko = gets.chomp().to_i

if (skolko == nil || !skolko.is_a?(Numeric))
	skolko = 0 
end

puts("#{skolko} #{sklonenie(skolko, form_1, form_2, form_3)}")