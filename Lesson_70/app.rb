#!/usr/bin/ruby
# encoding: utf-8

# Игра: угадай слово по шаблону. Пример использования регулярных выражений


# Этот код необходим только при использовании русских букв на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end



require "./methods.rb"

regexp_string = get_random_regexp_string

puts "Придумайте как можно больше слов "\
			"содержащих шаблон '#{regexp_string.gsub('.', '*')}'"

puts "Для выхода наберите Х (латинские буквы)"


count = 0

loop do 
	word = STDIN.gets.chomp

	if word.downcase == 'x'
		break
	end

	if word_exists?(word)
		if word =~ /#{regexp_string}/
			puts '..OK =)'
			count += 1
		else
			puts '.. не подходит =('
		end
	else
		puts "нет такого слова"
	end
end

puts "Игра закончена, ваш счет: #{count}"