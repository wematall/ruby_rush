#!/usr/bin/ruby
# encoding: utf-8

# Сегодня выходной?
# Напишите программу, которая подсказывает, 
# выходной сегодня или нет 
# (для простоты мы не учитываем государственных праздников, 
# 	итак много дней для безделья):

# Сегодня выходной!
# или

# Сегодня будний день, за работу!

t = Time.now
day_off = "Сегодня выходной!"
work_day = "Сегодня будний день, за работу!"

if (t.wday == 0 || t.wday == 7)
	puts day_off
else
	puts work_day
end

puts "or with ternary operations"

puts (t.wday == 0 || t.wday == 7) ? day_off : work_day