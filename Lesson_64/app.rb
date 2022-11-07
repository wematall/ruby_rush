puts "Привет, я твой дневник. Скажи мне что у тебя на уме или в душе?"
puts "Я сохраню всё, что ты напишешь до строчки \"end\" в файл."
puts 

current_path = File.dirname(__FILE__)

line = nil
all_lines = []

while line != "end" do 
	line = STDIN.gets.encode("UTF-8").chomp
	all_lines << line 
end


time = Time.now

file_name = time.strftime("%Y-%m-%d") # 2022-11-07

time_string = time.strftime("%H:%M:%S") # 18:17:23

separator = "---------------------------------------------"

file = File.new(current_path + "/data/" + file_name + ".txt", "a:UTF-8")

file.print("\n\r" + time_string + "\n\r")

all_lines.pop # remove lat element from array \n

for item in all_lines do 
	file.puts(item)
end

file.puts(separator)

file.close

puts "Ваша запись сохранена в файл #{file_name}.txt"