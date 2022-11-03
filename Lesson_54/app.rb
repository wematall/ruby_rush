#!/usr/bin/ruby
# encoding: utf-8


content_path = File.dirname(__FILE__)

file_name = ARGV[0]

file_path = content_path + "/data/" + file_name
regim = "r:UTF-8"


if File.exist?(file_path)
	file = File.new(file_path, regim)
	content = file.readlines
	file.close
else
	abort "File not found"
end

empty_strings = 0
# keep last 5 strings in a file
tail = content[-5..-1]

# count empty string in a file
for item in content 
	if item.length == 1
		empty_strings += 1
	end
end

puts "Открыли файл: #{file_path}"
puts "Всего строк: #{content.length}"
puts "Пустых строк: #{empty_strings}"
puts "Последние 5 строк файла:"
puts ""
puts tail
