#!/usr/bin/ruby
# encoding: utf-8

# Сегодня выходной? (с праздниками)
# Улучшите программу из ранних уроков, которая говорит, выходной ли сегодня.

# Сделайте так, чтобы программа говорила, 
# что сегодня выходной не только если сегодня суббота или воскресенье, 
# но и если сегодня один из государственных праздников.

# Список праздничных дней на ближайший год нагуглите в интернете и запишите в файл,
#  который будет использовать ваша программа.

content_path = File.dirname(__FILE__)

file_path = content_path + "/data/holidays.txt"

day_off = "Сегодня выходной"
work_day = "Сегодня работаем"
holiday_day = "Сегодня праздник, выходной"

holidays = []

time = Time.new
today = time.strftime('%d.%m')  # today formatted as 08.11 day.month

# check if file exist and read content in variable
if File.exist?(file_path)
	file = File.new(file_path, 'r:UTF-8')
	file_content = file.readlines
	file.close
else
	puts "File holidays.txt not found"
end

# put holidays at array
for item in file_content do 
	holidays << item.chomp
end

# check day of week and holidays
if time.wday == 0 || time.wday == 6
	puts day_off
elsif 
	holidays.include?(today)
		puts holiday_day
else
	puts work_day
end

