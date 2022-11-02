#!/usr/bin/ruby
# encoding: utf-8

require_relative "film"


puts "Фильмы с режиссерами"
puts ""

film_obj = []

puts "Фильмы какого режиссера Вы хотите посмотреть?"

producer_name = STDIN.gets.encode("UTF-8").chomp

3.times do 

	puts "Какой-нибудь его хороший фильм?"
	film_name = STDIN.gets.encode("UTF-8").chomp

	film_obj << Film.new(film_name, producer_name)
end

random_film = film_obj.sample

puts "И сегодня вечером рекомендую посмотреть: " + random_film.get_film_name
puts "Режиссер: " + random_film.get_producer_name