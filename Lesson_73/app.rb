#!/usr/bin/ruby
# encoding: utf-8

# На три веселых буквы...
# Напишите программу, которая читает текст из файла 
# и считает количество слов из трех букв.

content_path = File.dirname(__FILE__)
file_path = content_path + "/data/text.txt"

pattern = /^\S{3}$/
word_counter = 0



if File.exist?(file_path)
	file = File.new(file_path, 'r:UTF-8')
	file_content = file.read 
	file.close
else
	puts "File text.txt not found"
end

text = file_content.gsub(/[,\(\)\.\-;:\?\!]/, '') # clean from symbols

words = text.split

for item in words do 
	if item.match(pattern)
		word_counter += 1
	end
end

puts "В заданном файле слов из трех букв: #{word_counter}"

# с помощью метода count
#puts words.count { |w| w =~ /^\S{3}$/ }

# ^ - начало строки
# \S - непробельный символ
# {3} - повторение предыдущего условия 3 раза
# $ - конец строки