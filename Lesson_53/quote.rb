
content_path = File.dirname(__FILE__)

path = content_path + "/data/quotes.txt"
regim = "r:UTF-8"

puts "Афоризм дня...."

if File.exist?(path)
	# puts "File exists, try to read..."
	sleep 2
	file = File.new(path, regim)
	lines = file.readlines

	file.close
else
	puts "File not found"
end

puts lines.sample