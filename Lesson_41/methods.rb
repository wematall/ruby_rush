#!/usr/bin/ruby
# encoding: utf-8

# get_letters возвращает массив букв (слово загаданное пользователем)
def get_letters
	slovo = ARGV[0]


	if (slovo == nil || slovo == "")
		abort "Вы не ввели слово для игры"
	end

	return slovo.split("")
end


# get_user_input

def get_user_input
	letter = ""

	while letter == "" do 
		letter = STDIN.gets.encode("UTF-8").chomp
	end

	return letter 
end

# check_result
def check_result(user_input, letters, good_letters, bad_letters)
	if (good_letters.include?(user_input) || bad_letters.include?(user_input))
		return 0
	end

	if (letters.include?(user_input))
		good_letters << user_input

		if letters.uniq.size == good_letters.size
			return 1
		else
			return 0
		end

	else
		bad_letters << user_input
		return -1
	end
end

def get_word_for_print(letters, good_letters)
	result = ""

	for letter in letters do 
		if good_letters.include? letter
			result += letter + " "
		else
			result += "_ "
		end
	end

	return result 
end

# print_status
# выодить загаданное слово
# информацию об ошибках
#  ошибок > 7 сообщить о поражении
# слово угадано сообщить о победе

def print_status(letters, good_letters, bad_letters,errors)
	puts "Слово: " + get_word_for_print(letters, good_letters)

	puts "Ошибки (#{errors}): #{bad_letters.join(", ")}"

	if errors >= 7
		puts "Вы проиграли :("
	else
		if (letters.uniq.size == good_letters.size)
			puts "Поздравляем! Вы выиграли!\n\n"
		else
			puts "У вас осталось попыток: " + (7-errors).to_s
		end
	end
end


# очищаем экран

def cls
	system "clear" or system "cls"
end