

content_path = File.dirname(__FILE__)

path = content_path + "/data/quotes.txt"
regim = "r:UTF-8"


if File.exist?(path)
	puts "Такой файл есть, пробуем прочитать..."

	sleep 2

	file = File.new(path, regim)
	content = file.read
	file.close
else
	puts "File not found"
end

puts content