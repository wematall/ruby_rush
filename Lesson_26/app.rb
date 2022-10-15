#!/usr/bin/ruby
# encoding: utf-8

# Камень — Ножницы — Бумага
# Над этой задачей нужно будет немного потрудиться, но не спешите.

# Напишите игру "камень - ножницы - бумага". 
# Пользователь вводит свой вариант в консоли и играет против компьютера. 
# И видит результат игры. 
# Компьютер должен выбирать случайный вариант.

#   введите вариант: 0 - камень, 1 - ножницы, 2 - бумага
#   2
#   Вы выбрали: Бумага
#   Компьютер выбрал: Ножницы
#   Победил Компьютер

puts "Камень-Ножницы-Бумага"

arr = [0, 1, 2] # for random number 0 - 2

variants = ["камень", "ножницы", "бумага"]

conditions = [
	"Ножницы режут бумагу",
	"Камень затупляет ножницы",
	"Бумага оборачивает камень"

]

user_step = 1
comp_step = 1


while user_step != 3

	comp_step = arr.sample
	puts "комп загадал #{comp_step}"

	puts "Компьютер выбрал свой вариант.."
	puts "Теперь ваш ход, выбирайте свой вариант: 0 или 1 или 2: "
	puts "0 - камень"
	puts "1 - ножницы"
	puts "2 - бумага"
	puts "3 - выход из игры"

	user_step = gets.chomp().to_i

	s = "Компьютер выбрал: #{variants[comp_step]}, Вы выбрали: #{variants[user_step]}"

	if comp_step == user_step
		puts "Ничья."
		puts s
	end

	if comp_step == 1 && user_step == 2
		puts "Вы проиграли"
		puts s 
		puts conditions[0]
	end

	if comp_step == 1 && user_step == 0
		puts "Вы выиграли"
		puts s 
		puts conditions[1]
	end

	if comp_step == 0 && user_step == 1
		puts "Вы проиграли"
		puts s 
		puts conditions[1]
	end

	if comp_step == 0 && user_step == 2
		puts "Вы выиграли"
		puts s 
		puts conditions[2]
	end

	if comp_step == 2 && user_step == 0
		puts "Вы проиграли"
		puts s 
		puts conditions[2]
	end

	if comp_step == 2 && user_step == 1
		puts "Вы выиграли"
		puts s 
		puts conditions[0]
	end

	puts ""
	puts "+++++++++++++++++++++++++"
	puts "" 
	puts "Играем еще..."

end

puts "Игра окончена, выход"
