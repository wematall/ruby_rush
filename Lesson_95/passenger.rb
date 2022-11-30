#!/usr/bin/ruby
# encoding: utf-8

# Много билетов пассажиров
# А теперь составьте массив хэшей с несколькими пассажирами в вагоне.

# Индекс хэша в массиве — место пассажира в вагоне.

# Затем выведите все билеты на экран.

# Например:

# > ruby passenger.rb
# Пассажиры поезда Москва — Петушки

# * * * Место № 1 * * *
# Билет № РМ2010398 050298
# Маршрут: Москва -> Петушки
# Пассажир: Венедикт В. Ерофеев
# Паспорт: 45 99 505281

# * * * Место № 2 * * *
# Билет № РМ2010399 050298
# Маршрут: Павловский Посад -> Орехово-Зуево
# Пассажир: Иннокентий П. Шниперсон
# Паспорт: 46 01 192872

# * * * Место № 3 * * *
# Билет № РМ2010399 050298
# Маршрут: Москва -> Владимир
# Пассажир: Иван В. Бунша
# Паспорт: 47 33 912876


# template
passenger = {
	:ticket_number => "",
	:start_point => "",
	:finish_point => "",
	:passport => "",
	:first_name => "",
	:second_name => "",
	:last_name => ""
}

tickets = [

	{
	:ticket_number => "РМ2010398 050298",
	:start_point => "Москва",
	:finish_point => "Петушки",
	:passport => "45 99 505281",
	:first_name => "Венедикт",
	:second_name => "Викторович",
	:last_name => "Ерофеев"
	},

	{
	:ticket_number => "РМ2010398 050298",
	:start_point => "Павловский Посад",
	:finish_point => "Орехово-Зуево",
	:passport => "46 01 192872",
	:first_name => "Иннокентий",
	:second_name => "Павлович",
	:last_name => "Шниперсон"
	},

	{
	:ticket_number => "РМ2010398 050298",
	:start_point => "Москва",
	:finish_point => "Владимир",
	:passport => "47 33 912876",
	:first_name => "Иван",
	:second_name => "Владимирович",
	:last_name => "Бунша"
	}

]

puts "Пассажиры поезда Москва — Петушки"
puts ""

tickets.each_with_index do |element, index|
	puts "*** Место № #{index + 1} ***"
	puts "Билет № #{element[:ticket_number]}"
	puts "Маршрут: #{element[:start_point]} -> #{element[:finish_point]}"
	puts "Пассажир: #{element[:first_name]} #{element[:second_name][0]}. #{element[:last_name]}"
	puts "Паспорт: #{element[:passport]}"
	puts ""
end