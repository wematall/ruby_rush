#!/usr/bin/ruby
# encoding: utf-8

# Билет пассажира
# Напишите программу, которая выводит билет пассажира поезда.

# Используйте своё воображение и ассоциативные массивы.

# Должно получиться как-то так:

# > ruby passenger.rb 

# Билет № РМ2010398 050298
# Маршрут: Москва — Петушки
# Пассажир: Венедикт В. Ерофеев
# Паспорт: 45 99 505281


passenger = {
	:ticket_number => "РМ2010398 050298",
	:start_point  => "Москва",
	:finish_point => "Петушки",	
	:passport => "45 99 505281",
	:last_name => "Ерофеев",
	:first_name => "Венедикт",
	:second_name => "Васильевич"
}


puts "Билет № #{passenger[:ticket_number]}"
puts "Маршрут: #{passenger[:start_point]} - #{passenger[:finish_point]}"
puts "Пассажир: #{passenger[:first_name]} #{passenger[:second_name][0]}. #{passenger[:last_name]}"
puts "Паспорт: #{passenger[:passport]}"