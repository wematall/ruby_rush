#!/usr/bin/ruby
# encoding: utf-8

content_path = File.dirname(__FILE__)

file_path = content_path + "/data/films.txt"

if File.exist?(file_path)
	file = File.new(file_path, 'r:UTF-8')
	file_content = file.readlines
	file.close
else
	puts "File films.txt not found"
end


puts "Сегодня Вам предлагается к просмотру фильм:"
puts file_content.sample.chomp